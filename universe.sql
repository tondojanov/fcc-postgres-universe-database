--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30),
    size integer NOT NULL,
    age numeric NOT NULL,
    discovered_by text,
    extinct boolean,
    galaxy_id integer NOT NULL,
    iddd integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_idd_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_idd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_idd_seq OWNER TO freecodecamp;

--
-- Name: galaxy_idd_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_idd_seq OWNED BY public.galaxy.iddd;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    size integer NOT NULL,
    age numeric NOT NULL,
    discovered_by text,
    extinct boolean,
    moon_id integer NOT NULL,
    idd integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_idd_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_idd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_idd_seq OWNER TO freecodecamp;

--
-- Name: moon_idd_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_idd_seq OWNED BY public.moon.idd;


--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30),
    size integer NOT NULL,
    age numeric NOT NULL,
    discovered_by text,
    extinct boolean,
    planet_id integer NOT NULL,
    idd integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_idd_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_idd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_idd_seq OWNER TO freecodecamp;

--
-- Name: planet_idd_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_idd_seq OWNED BY public.planet.idd;


--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    size integer NOT NULL,
    age numeric NOT NULL,
    discovered_by text,
    extinct boolean,
    star_id integer NOT NULL,
    idd integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_idd_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_idd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_idd_seq OWNER TO freecodecamp;

--
-- Name: star_idd_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_idd_seq OWNED BY public.star.idd;


--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    name character varying(30),
    size integer NOT NULL,
    age numeric NOT NULL,
    discovered_by text,
    extinct boolean,
    sun_id integer NOT NULL,
    letter character(1)
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy iddd; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN iddd SET DEFAULT nextval('public.galaxy_idd_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon idd; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN idd SET DEFAULT nextval('public.moon_idd_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet idd; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN idd SET DEFAULT nextval('public.planet_idd_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star idd; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN idd SET DEFAULT nextval('public.star_idd_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Galaxa88', 148, 74564565, 'Josh II', false, 1, 1);
INSERT INTO public.galaxy VALUES ('Mouse-II8', 1477896, 565, 'Thond', true, 2, 2);
INSERT INTO public.galaxy VALUES ('Test__II8', 4848648, 11, 'Joinze', true, 3, 3);
INSERT INTO public.galaxy VALUES ('Tphantom_II8', 4656446, 99, 'Marcuu', true, 4, 4);
INSERT INTO public.galaxy VALUES ('Small__I8', 122, 1, 'Joseph III', false, 5, 5);
INSERT INTO public.galaxy VALUES ('Dumb_galaxy_I8', 12258, 44, 'Alexandriu II', true, 6, 6);
INSERT INTO public.galaxy VALUES ('Andromeda', 5200, 8, 'Roman Král', true, 7, 7);
INSERT INTO public.galaxy VALUES ('Sombrero', 4800, 9, 'Lucie Marešová', false, 8, 8);
INSERT INTO public.galaxy VALUES ('Whirlpool', 5300, 12, 'Jakub Veselý', true, 9, 9);
INSERT INTO public.galaxy VALUES ('Messier 87', 6100, 15, 'Barbora Dvořáková', false, 10, 10);
INSERT INTO public.galaxy VALUES ('Triangulum', 4700, 10, 'Ondřej Novotný', true, 11, 11);
INSERT INTO public.galaxy VALUES ('Pinwheel', 5500, 11, 'Eva Kovářová', false, 12, 12);
INSERT INTO public.galaxy VALUES ('Cartwheel', 6200, 12, 'Jan Procházka', true, 13, 13);
INSERT INTO public.galaxy VALUES ('Black Eye', 5900, 10, 'Lukáš Růžička', false, 14, 14);
INSERT INTO public.galaxy VALUES ('Tadpole', 6800, 13, 'Petr Marek', true, 15, 15);
INSERT INTO public.galaxy VALUES ('Cigar', 6300, 9, 'Marek Šimek', false, 16, 16);
INSERT INTO public.galaxy VALUES ('Centaurus A', 7100, 14, 'Simona Kubíčková', true, 17, 17);
INSERT INTO public.galaxy VALUES ('HoagsObject', 7200, 11, 'Daniela Tichá', false, 18, 18);
INSERT INTO public.galaxy VALUES ('Sunflower', 6700, 8, 'Jakub Jelínek', true, 19, 19);
INSERT INTO public.galaxy VALUES ('Sculptor', 7300, 15, 'Pavla Holubová', false, 20, 20);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Titan', 348, 4, 'Marek Rybak', true, 1, 1, 1);
INSERT INTO public.moon VALUES ('Europa', 712, 7, 'Anna Vávrová', false, 2, 2, 2);
INSERT INTO public.moon VALUES ('Ganymede', 984, 10, 'Peter Novák', true, 3, 3, 3);
INSERT INTO public.moon VALUES ('Callisto', 635, 5, 'Lucia Kovářová', false, 4, 4, 4);
INSERT INTO public.moon VALUES ('Io', 587, 8, 'Jan Pokorný', true, 5, 5, 5);
INSERT INTO public.moon VALUES ('Enceladus', 450, 12, 'Ivana Míková', false, 6, 6, 6);
INSERT INTO public.moon VALUES ('Mimas', 702, 9, 'Karel Zeman', true, 7, 7, 7);
INSERT INTO public.moon VALUES ('Rhea', 821, 6, 'Michaela Sládková', false, 8, 8, 8);
INSERT INTO public.moon VALUES ('Dione', 543, 11, 'Pavel Malý', true, 9, 9, 9);
INSERT INTO public.moon VALUES ('Tethys', 769, 13, 'Jana Fialová', false, 10, 10, 10);
INSERT INTO public.moon VALUES ('Iapetus', 589, 15, 'Tomáš Černý', true, 11, 11, 11);
INSERT INTO public.moon VALUES ('Phoebe', 671, 16, 'Jiří Dvořák', false, 12, 12, 12);
INSERT INTO public.moon VALUES ('Hyperion', 945, 7, 'Kateřina Veselá', true, 13, 13, 13);
INSERT INTO public.moon VALUES ('Ariel', 734, 14, 'Martin Jaroš', false, 14, 14, 14);
INSERT INTO public.moon VALUES ('Umbriel', 408, 9, 'Alena Krejčí', true, 15, 15, 15);
INSERT INTO public.moon VALUES ('Oberon', 823, 10, 'Ondřej Mareš', false, 16, 16, 16);
INSERT INTO public.moon VALUES ('Titania', 760, 12, 'Hana Urbánková', true, 17, 17, 17);
INSERT INTO public.moon VALUES ('Miranda', 613, 8, 'Petr Svoboda', false, 18, 18, 18);
INSERT INTO public.moon VALUES ('Triton', 912, 11, 'Eva Novotná', true, 19, 19, 19);
INSERT INTO public.moon VALUES ('Nereid', 457, 6, 'Lukáš Hájek', false, 20, 20, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Venuša', 954998, 5588, 'Jáusn Pavol', false, 1, 1, 1);
INSERT INTO public.planet VALUES ('Zem', 948, 8, 'Jozef Javol', false, 2, 2, 2);
INSERT INTO public.planet VALUES ('Proxima', 726, 4, 'Marek Rybak', true, 3, 3, 3);
INSERT INTO public.planet VALUES ('Epsilon', 512, 12, 'Anna Vávrová', false, 4, 4, 4);
INSERT INTO public.planet VALUES ('Altair', 1023, 7, 'Peter Novák', true, 5, 5, 5);
INSERT INTO public.planet VALUES ('Betelgeuse', 689, 9, 'Lucia Kovářová', false, 6, 6, 6);
INSERT INTO public.planet VALUES ('Sirius', 843, 5, 'Jan Pokorný', true, 7, 7, 7);
INSERT INTO public.planet VALUES ('Rigel', 394, 11, 'Ivana Míková', false, 8, 8, 8);
INSERT INTO public.planet VALUES ('Aldebaran', 777, 8, 'Karel Zeman', true, 9, 9, 9);
INSERT INTO public.planet VALUES ('Capella', 920, 6, 'Michaela Sládková', false, 10, 10, 10);
INSERT INTO public.planet VALUES ('Vega', 650, 10, 'Pavel Malý', true, 11, 11, 11);
INSERT INTO public.planet VALUES ('Arcturus', 1034, 15, 'Jana Fialová', false, 12, 12, 12);
INSERT INTO public.planet VALUES ('Spica', 450, 13, 'Tomáš Černý', true, 13, 13, 13);
INSERT INTO public.planet VALUES ('Deneb', 580, 14, 'Jiří Dvořák', false, 14, 14, 14);
INSERT INTO public.planet VALUES ('Antares', 690, 16, 'Kateřina Veselá', true, 15, 15, 15);
INSERT INTO public.planet VALUES ('Castor', 839, 18, 'Martin Jaroš', false, 16, 16, 16);
INSERT INTO public.planet VALUES ('Pollux', 399, 7, 'Alena Krejčí', true, 17, 17, 17);
INSERT INTO public.planet VALUES ('Fomalhaut', 902, 11, 'Ondřej Mareš', false, 18, 18, 18);
INSERT INTO public.planet VALUES ('Achernar', 789, 12, 'Hana Urbánková', true, 19, 19, 19);
INSERT INTO public.planet VALUES ('Regulus', 624, 14, 'Petr Svoboda', false, 20, 20, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Gaaaa88', 1487, 79545, 'Jozej Marcus', false, 1, 1, 1);
INSERT INTO public.star VALUES ('Orion', 12, 4444, 'Marcelius', false, 2, 2, 2);
INSERT INTO public.star VALUES ('Milka', 1112, 4479744, 'Keyboardus', false, 3, 3, 3);
INSERT INTO public.star VALUES ('Choco', 56, 445, 'Starumus', true, 4, 4, 4);
INSERT INTO public.star VALUES ('Starmus_11*', 568, 455, 'Ján Pavol', true, 5, 5, 5);
INSERT INTO public.star VALUES ('Starmus_888/*', 9998, 88, 'Ján Pavol', false, 6, 6, 6);
INSERT INTO public.star VALUES ('Aldebaran', 2500, 7, 'Simona Volfová', false, 7, 7, 7);
INSERT INTO public.star VALUES ('Capella', 2900, 6, 'David Král', true, 8, 8, 8);
INSERT INTO public.star VALUES ('Vega', 2700, 9, 'Helena Malá', false, 9, 9, 9);
INSERT INTO public.star VALUES ('Arcturus', 3200, 11, 'Milan Fiala', true, 10, 10, 10);
INSERT INTO public.star VALUES ('Spica', 3100, 10, 'Olga Horáková', false, 11, 11, 11);
INSERT INTO public.star VALUES ('Deneb', 3000, 13, 'Petra Soukupová', true, 12, 12, 12);
INSERT INTO public.star VALUES ('Altair', 3400, 7, 'Martin Kučera', false, 13, 13, 13);
INSERT INTO public.star VALUES ('Antares', 3600, 14, 'Iveta Vávrová', true, 14, 14, 14);
INSERT INTO public.star VALUES ('Pollux', 3100, 11, 'David Bláha', false, 15, 15, 15);
INSERT INTO public.star VALUES ('Castor', 3300, 12, 'Petr Vacek', true, 16, 16, 16);
INSERT INTO public.star VALUES ('Fomalhaut', 3500, 9, 'Miroslav Beneš', false, 17, 17, 17);
INSERT INTO public.star VALUES ('Procyon', 3700, 10, 'Alena Černá', true, 18, 18, 18);
INSERT INTO public.star VALUES ('Acrux', 3800, 8, 'Rudolf Svoboda', false, 19, 19, 19);
INSERT INTO public.star VALUES ('Achernar', 3900, 15, 'Hana Nováková', true, 20, 20, 20);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES ('Alpha Centauri', 1400, 5, 'Adam Horák', true, 1, NULL);
INSERT INTO public.sun VALUES ('Betelgeuse', 1600, 8, 'Eliška Novotná', false, 2, NULL);
INSERT INTO public.sun VALUES ('Sirius', 1300, 10, 'Tomáš Bartoš', true, 3, NULL);
INSERT INTO public.sun VALUES ('Proxima Centauri', 1500, 7, 'Veronika Dvořáková', false, 4, NULL);
INSERT INTO public.sun VALUES ('Rigel', 1700, 12, 'Jakub Procházka', true, 5, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: galaxy_idd_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_idd_seq', 20, true);


--
-- Name: moon_idd_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_idd_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 20, true);


--
-- Name: planet_idd_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_idd_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 20, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 20, true);


--
-- Name: star_idd_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_idd_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 1, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: galaxy unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unq UNIQUE (name);


--
-- Name: moon unq_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unq_moon UNIQUE (name);


--
-- Name: planet unq_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unq_planet UNIQUE (name);


--
-- Name: star unq_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unq_star UNIQUE (name);


--
-- Name: sun unq_sun; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT unq_sun UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

