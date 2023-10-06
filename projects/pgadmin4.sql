CREATE TABLE phones(
id serial primary key,
	marka varchar(30),
	 price INTEGER 
)

INSERT INTO phones(marka,price) VALUES
('apple',100000),
('samsunng',30000),
('xiaomi', 20000)

select * from phones

CREATE TABLE kancelyar(
id serial primary key,
	naimenovaniye varchar(30),
	 price INTEGER 
)

INSERT INTO kancelyar(naimenovaniye,price) VALUES
('pen',15),
('book',200),
('schoolbag',2000),
('pencil',20)

select * from kancelyar

-- CREATE TABLE kompanies(
-- id serial primary key,
-- 	name varchar(80),
-- 	 date_of_foundation timestamp 
-- )

-- INSERT INTO kompanies(name,date_of_foundation) VALUES
-- ('google',1888-02-02, 01:00:00),
-- ('facebook',2007-12-10, 00:00:00),
-- ('microsoft',1997-10-03, 00:00:00)

CREATE TABLE kompanies1(
id serial primary key,
	name varchar(80),
	 date_of_foundation int 
)

INSERT INTO kompanies1(name,date_of_foundation) VALUES
('google',1888),
('facebook',2007),
('microsoft',1997)

select * from kompanies1

CREATE TABLE programmers(
id serial primary key,
	name VARCHAR(80),
	last_name varchar(100),
	email varchar(100)
)

alter table programmers add column kompanies_id INTEGER REFERENCES kompanies1 (id)
INSERT INTO programmers(name, last_name, email,kompanies_id) VALUES
('Nuriza','zununova','nuriza@mail.ru',1),
('Adelia','nnn','adelia@mail.ru',2),
('Amir','Konurbaev','amir@mail.ru',3)
				
select * from kompanies1;
select * from phones;
select * from kompanies1;
				