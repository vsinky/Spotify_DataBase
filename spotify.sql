use spotify;

CREATE TABLE Users (
User_Id varchar(45) PRIMARY KEY NOT NULL,
User_Name varchar(45) NOT NULL,
User_Email varchar(45) NOT NULL );


CREATE TABLE Playlists (
Playlist_Id varchar(45) PRIMARY KEY NOT NULL,
Playlist_Name varchar(45) NOT NULL,
User_Id varchar(45),
foreign key (User_Id)
references Users(User_Id)
 );
 drop table Playlists;
 
CREATE TABLE Tracks (
Track_Id varchar(45) PRIMARY KEY NOT NULL,
Track_Name varchar(45) NOT NULL,
Playlist_Id varchar(45),
foreign key (Playlist_Id)
references Playlists(Playlist_Id)
 );
describe Users;
describe Playlists;
describe Tracks;

insert into Users(User_Id,User_Name,User_Email)
values('Spotify:user:hzil1bztsv1tkm68ekvrbxlza','Sinky','sinky@gmail.com');

Select * from Users;

insert into Users(User_Id,User_Name,User_Email)
values('Spotify:user:kzil1bztsv1tkm79ekvrbxlzb','Sandeep','sandeep@gmail.com'),
('Spotify:user:lzil1bztsv1tkm90ekvrbxlzc','Anurag','anurag@gmail.com'),
('Spotify:user:mzil1bztsv1tkm01ekvrbxlzd','Ravi','ravi@gmail.com'),
('Spotify:user:nzil1bztsv1tkm12ekvrbxlze','Preety','preety@gmail.com');

insert into Playlists(Playlist_Id,Playlist_Name,User_Id)
values('Spotify:playlist:4nwAqvVbIZyz8j4u2e5A1g','songs','Spotify:user:hzil1bztsv1tkm68ekvrbxlza');

select * from Playlists;

insert into Playlists(Playlist_Id,Playlist_Name,User_Id)
values('Spotify:playlist:5nwAqvVbIZyz9j5u3e6A2g','hindi songs','Spotify:user:kzil1bztsv1tkm79ekvrbxlzb'),
('Spotify:playlist:6nwAqvVbIZyz0j6u4e7A3g','sinky songs','Spotify:user:lzil1bztsv1tkm90ekvrbxlzc'),
('Spotify:playlist:7nwAqvVbIZyz1j7u5e8A4g','fav songs','Spotify:user:mzil1bztsv1tkm01ekvrbxlzd'),
('Spotify:playlist:8nwAqvVbIZyz2j8u6e9A5g','happy songs','Spotify:user:nzil1bztsv1tkm12ekvrbxlze');

insert into Tracks (Track_Id,Track_Name,Playlist_Id)
values('Spotify:track:5X5mUYJ9TUwosuEAZFzKEX','Arijit singh','Spotify:playlist:4nwAqvVbIZyz8j4u2e5A1g'),
('Spotify:track:5WzfGg2ueNoOS5aIkaR9qX','Arijit singh','Spotify:playlist:5nwAqvVbIZyz9j5u3e6A2g'),
('Spotify:track:46NYX9zIml71qtfYYjakTI','Pritam','Spotify:playlist:6nwAqvVbIZyz0j6u4e7A3g'),
('Spotify:track:5Ox43gIWUNW6pAgx3F3oi7','Arijit singh','Spotify:playlist:7nwAqvVbIZyz1j7u5e8A4g'),
('Spotify:track:2FCXQHugkoHE1K3tiDu8pu','Arijit singh','Spotify:playlist:8nwAqvVbIZyz2j8u6e9A5g');

select * from Tracks;

/*Inner join */
select * from Users
inner join Playlists
on Users.User_Id=Playlists.User_Id
inner join Tracks
on Playlists.Playlist_Id=Tracks.Playlist_Id;

/*Left join*/
select * from Users
left join Playlists
on Users.User_Id=Playlists.User_Id
left join Tracks
on Playlists.Playlist_Id=Tracks.Playlist_Id;

/*Right join*/
select * from Users
right join Playlists
on Users.User_Id=Playlists.User_Id
right join Tracks
on Playlists.Playlist_Id=Tracks.Playlist_Id;

/*Cross join*/
select * from Users
cross join Playlists
on Users.User_Id=Playlists.User_Id
cross join Tracks
on Playlists.Playlist_Id=Tracks.Playlist_Id;

select * from Users
inner join Playlists
on Users.User_Id=Playlists.User_Id
left join Tracks
on Playlists.Playlist_Id=Tracks.Playlist_Id;

SELECT Users.user_Id, Playlists.Playlist_Name, Tracks.Track_Name
FROM ((Users
INNER JOIN Playlists ON  Users.User_Id=Playlists.User_Id)
INNER JOIN Tracks ON Playlists.Playlist_Id=Tracks.Playlist_Id);

SELECT Users.user_Id, Playlists.Playlist_Name, Tracks.Track_Name
FROM ((Users
Left JOIN Playlists ON  Users.User_Id=Playlists.User_Id)
Left JOIN Tracks ON Playlists.Playlist_Id=Tracks.Playlist_Id);

SELECT Users.user_Id, Playlists.Playlist_Name, Tracks.Track_Name
FROM ((Users
Right JOIN Playlists ON  Users.User_Id=Playlists.User_Id)
Right JOIN Tracks ON Playlists.Playlist_Id=Tracks.Playlist_Id);

SELECT Users.user_Id, Playlists.Playlist_Name, Tracks.Track_Id,Tracks.Track_Name
FROM ((Users
CROSS JOIN Playlists ON  Users.User_Id=Playlists.User_Id)
CROSS JOIN Tracks ON Playlists.Playlist_Id=Tracks.Playlist_Id);


use mysql_db;
show tables;
select *from emp_table;
describe emp_table;









