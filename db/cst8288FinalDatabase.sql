

CREATE DATABASE `fwdb` ;

USE `fwdb`;

/*Table structure for table `food` */

CREATE TABLE `food` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `price` decimal(8,0) DEFAULT NULL,
  `inventory` int(11) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `ftid` int(11) DEFAULT NULL,
  `is_donate` int(11) DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `food` */

insert  into `food`(`fid`,`fname`,`expiration`,`price`,`inventory`,`discount`,`ftid`,`is_donate`) values (1,'beaf','2024-04-09','12',7,1,2,1);
insert  into `food`(`fid`,`fname`,`expiration`,`price`,`inventory`,`discount`,`ftid`,`is_donate`) values (2,'coco','2024-04-20','19',9,0.7,1,0);
insert  into `food`(`fid`,`fname`,`expiration`,`price`,`inventory`,`discount`,`ftid`,`is_donate`) values (3,'fish','2024-04-13','5',10,1,1,0);
insert  into `food`(`fid`,`fname`,`expiration`,`price`,`inventory`,`discount`,`ftid`,`is_donate`) values (4,'rice','2024-04-13','6',10,1,1,0);

/*Table structure for table `food_type` */

CREATE TABLE `food_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `food_type` */

insert  into `food_type`(`id`,`name`) values (1,'drink');
insert  into `food_type`(`id`,`name`) values (2,'bread');

/*Table structure for table `orders` */

CREATE TABLE `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `money` decimal(8,2) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`oid`,`uid`,`fid`,`money`,`num`) values (2,3,1,NULL,1);
insert  into `orders`(`oid`,`uid`,`fid`,`money`,`num`) values (3,3,1,NULL,1);
insert  into `orders`(`oid`,`uid`,`fid`,`money`,`num`) values (4,1,2,'19.00',1);
insert  into `orders`(`oid`,`uid`,`fid`,`money`,`num`) values (5,1,2,'19.00',1);
insert  into `orders`(`oid`,`uid`,`fid`,`money`,`num`) values (6,1,2,'26.60',2);
insert  into `orders`(`oid`,`uid`,`fid`,`money`,`num`) values (7,3,1,NULL,1);

/*Table structure for table `subscribe` */

CREATE TABLE `subscribe` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `subscribe` */

/*Table structure for table `user` */

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`uid`,`name`,`email`,`password`,`user_type`) values (1,'aaa','zzyy25143@163.com','123','consumer');
insert  into `user`(`uid`,`name`,`email`,`password`,`user_type`) values (2,'bbb','bbb@111.com','123','retailer');
insert  into `user`(`uid`,`name`,`email`,`password`,`user_type`) values (3,'ccc','ccc@11.com','123','organization');