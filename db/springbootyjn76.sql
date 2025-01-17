-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootyjn76
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615444210577 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (71,'2021-03-11 06:13:27',1,1,'提问1','回复1',1),(72,'2021-03-11 06:13:27',2,2,'提问2','回复2',2),(73,'2021-03-11 06:13:27',3,3,'提问3','回复3',3),(74,'2021-03-11 06:13:27',4,4,'提问4','回复4',4),(75,'2021-03-11 06:13:27',5,5,'提问5','回复5',5),(76,'2021-03-11 06:13:27',6,6,'提问6','回复6',6),(1615444119229,'2021-03-11 06:28:38',1615443940594,NULL,'请问雨花石小区有房源吗',NULL,0),(1615444210576,'2021-03-11 06:30:09',1615443940594,1,NULL,'暂时没有呢',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springbootyjn76/upload/1615443649346.jpg'),(2,'picture2','http://localhost:8080/springbootyjn76/upload/1615443905629.jpg'),(3,'picture3','http://localhost:8080/springbootyjn76/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussfangwuxinxi`
--

DROP TABLE IF EXISTS `discussfangwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussfangwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='房屋信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussfangwuxinxi`
--

LOCK TABLES `discussfangwuxinxi` WRITE;
/*!40000 ALTER TABLE `discussfangwuxinxi` DISABLE KEYS */;
INSERT INTO `discussfangwuxinxi` VALUES (111,'2021-03-11 06:13:27',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-11 06:13:27',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-11 06:13:27',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-11 06:13:27',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-11 06:13:27',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-11 06:13:27',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussfangwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuleixing`
--

DROP TABLE IF EXISTS `fangwuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangwuleixing` (`fangwuleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1615443789064 DEFAULT CHARSET=utf8 COMMENT='房屋类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuleixing`
--

LOCK TABLES `fangwuleixing` WRITE;
/*!40000 ALTER TABLE `fangwuleixing` DISABLE KEYS */;
INSERT INTO `fangwuleixing` VALUES (21,'2021-03-11 06:13:27','单房'),(22,'2021-03-11 06:13:27','一房一厅'),(23,'2021-03-11 06:13:27','两房一厅'),(24,'2021-03-11 06:13:27','三房一厅'),(25,'2021-03-11 06:13:27','三房两厅'),(1615443789063,'2021-03-11 06:23:08','四房两厅');
/*!40000 ALTER TABLE `fangwuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuxinxi`
--

DROP TABLE IF EXISTS `fangwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `zulinfangshi` varchar(200) DEFAULT NULL COMMENT '租赁方式',
  `chaoxianglouceng` varchar(200) DEFAULT NULL COMMENT '朝向楼层',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积',
  `fangwuzhuangtai` varchar(200) DEFAULT NULL COMMENT '房屋状态',
  `xiaoqu` varchar(200) DEFAULT NULL COMMENT '小区',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `yuezujiage` int(11) DEFAULT NULL COMMENT '月租价格',
  `yajin` int(11) DEFAULT NULL COMMENT '押金',
  `fangwuxiangqing` longtext COMMENT '房屋详情',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615443862392 DEFAULT CHARSET=utf8 COMMENT='房屋信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuxinxi`
--

LOCK TABLES `fangwuxinxi` WRITE;
/*!40000 ALTER TABLE `fangwuxinxi` DISABLE KEYS */;
INSERT INTO `fangwuxinxi` VALUES (31,'2021-03-11 06:13:27','房屋名称1','一房一厅','http://localhost:8080/springbootyjn76/upload/fangwuxinxi_tupian1.jpg','整租','朝向楼层1','面积1','可租','小区1','详细地址1',1,1,'<p>房屋详情1</p>','2021-03-11','2021-03-11 14:18:30',3),(32,'2021-03-11 06:13:27','房屋名称2','三房一厅','http://localhost:8080/springbootyjn76/upload/fangwuxinxi_tupian2.jpg','整租','朝向楼层2','面积2','可租','小区2','详细地址2',2,2,'<p>房屋详情2</p>','2021-03-11','2021-03-11 14:18:35',3),(33,'2021-03-11 06:13:27','房屋名称3','三房两厅','http://localhost:8080/springbootyjn76/upload/1615443550482.jpg','整租','朝向楼层3','面积3','可租','小区3','详细地址3',3,3,'<p>房屋详情3</p>','2021-03-11','2021-03-11 14:18:40',4),(34,'2021-03-11 06:13:27','房屋名称4','两房一厅','http://localhost:8080/springbootyjn76/upload/fangwuxinxi_tupian4.jpg','整租','朝向楼层4','面积4','可租','小区4','详细地址4',4,4,'<p>房屋详情4</p>','2021-03-11','2021-03-11 14:19:15',5),(35,'2021-03-11 06:13:27','房屋名称5','单房','http://localhost:8080/springbootyjn76/upload/1615443569852.jpg','整租','朝向楼层5','面积5','可租','小区5','详细地址5',5,5,'<p>房屋详情5</p>','2021-03-11','2021-03-11 14:19:23',6),(36,'2021-03-11 06:13:27','房屋名称6','三房一厅','http://localhost:8080/springbootyjn76/upload/1615443584683.jpg','整租','朝向楼层6','面积6','可租','小区6','详细地址6',6,6,'<p>房屋详情6</p>','2021-03-11','2021-03-11 14:19:34',9),(1615443862391,'2021-03-11 06:24:22','新纪家园5栋604','三房两厅','http://localhost:8080/springbootyjn76/upload/1615443809552.jpg','整租','南北 共14层','100平','已租','新纪家园','朝阳太阳攻中路',3000,3000,'<p>南北通透，采光极好</p><p><img src=\"http://localhost:8080/springbootyjn76/upload/1615443860751.jpg\"></p>','2021-03-11','2021-03-11 14:33:10',5);
/*!40000 ALTER TABLE `fangwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615444078636 DEFAULT CHARSET=utf8 COMMENT='交流论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (81,'2021-03-11 06:13:27','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(82,'2021-03-11 06:13:27','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(83,'2021-03-11 06:13:27','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(84,'2021-03-11 06:13:27','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(85,'2021-03-11 06:13:27','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(86,'2021-03-11 06:13:27','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1615444063879,'2021-03-11 06:27:43','轮如何租到心仪的房子','<p>轮如何租到心仪的房子</p>\n<p><img src=\"../../../upload/1615444060770.jpg\" alt=\"\" width=\"750\" height=\"563\" /></p>',0,1615443940594,'1','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615443897962 DEFAULT CHARSET=utf8 COMMENT='房屋资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-03-11 06:13:27','标题1','简介1','http://localhost:8080/springbootyjn76/upload/1615443604904.jpg','<p>内容1</p>'),(102,'2021-03-11 06:13:27','标题2','简介2','http://localhost:8080/springbootyjn76/upload/1615443611830.jpg','<p>内容2</p>'),(103,'2021-03-11 06:13:27','标题3','简介3','http://localhost:8080/springbootyjn76/upload/1615443619265.jpg','<p>内容3</p>'),(104,'2021-03-11 06:13:27','标题4','简介4','http://localhost:8080/springbootyjn76/upload/1615443626168.jpg','<p>内容4</p>'),(105,'2021-03-11 06:13:27','标题5','简介5','http://localhost:8080/springbootyjn76/upload/1615443634293.jpg','<p>内容5</p>'),(106,'2021-03-11 06:13:27','标题6','简介6','http://localhost:8080/springbootyjn76/upload/1615443641924.jpg','<p>内容6</p>'),(1615443897961,'2021-03-11 06:24:57','一手房源资讯','优惠资讯','http://localhost:8080/springbootyjn76/upload/1615443878629.jpg','<p>大量一手房源，价格优，欢迎选购</p><p><img src=\"http://localhost:8080/springbootyjn76/upload/1615443895738.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615443986815 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','wfnizteuzl44k0eg80tfy95g70vrozu2','2021-03-11 06:14:47','2021-03-11 07:32:40'),(2,11,'用户1','yonghu','用户','fs7obne18vfimlta99ngwzi2d6t68vmt','2021-03-11 06:15:17','2021-03-11 07:16:09'),(3,1615443940594,'1','yonghu','用户','a840jhbgeib5qcm9bihol9n1j1js82y8','2021-03-11 06:25:46','2021-03-11 07:31:13');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-11 06:13:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615443940595 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-11 06:13:27','用户1','123456','姓名1','男','http://localhost:8080/springbootyjn76/upload/yonghu_touxiang1.jpg','13823888881','440300199101010001'),(12,'2021-03-11 06:13:27','用户2','123456','姓名2','男','http://localhost:8080/springbootyjn76/upload/yonghu_touxiang2.jpg','13823888882','440300199202020002'),(13,'2021-03-11 06:13:27','用户3','123456','姓名3','男','http://localhost:8080/springbootyjn76/upload/yonghu_touxiang3.jpg','13823888883','440300199303030003'),(14,'2021-03-11 06:13:27','用户4','123456','姓名4','男','http://localhost:8080/springbootyjn76/upload/yonghu_touxiang4.jpg','13823888884','440300199404040004'),(15,'2021-03-11 06:13:27','用户5','123456','姓名5','男','http://localhost:8080/springbootyjn76/upload/yonghu_touxiang5.jpg','13823888885','440300199505050005'),(16,'2021-03-11 06:13:27','用户6','123456','姓名6','男','http://localhost:8080/springbootyjn76/upload/yonghu_touxiang6.jpg','13823888886','440300199606060006'),(1615443940594,'2021-03-11 06:25:40','1','1','陈一','女','http://localhost:8080/springbootyjn76/upload/1615443958595.jpg','12312312312','123456789789456123');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuekanfang`
--

DROP TABLE IF EXISTS `yuyuekanfang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyuekanfang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积',
  `fangwuzhuangtai` varchar(200) DEFAULT NULL COMMENT '房屋状态',
  `xiaoqu` varchar(200) DEFAULT NULL COMMENT '小区',
  `yuezujiage` int(11) DEFAULT NULL COMMENT '月租价格',
  `zulinyueshu` int(11) DEFAULT NULL COMMENT '租赁月数',
  `zulinjine` varchar(200) DEFAULT NULL COMMENT '租赁金额',
  `yajin` varchar(200) DEFAULT NULL COMMENT '押金',
  `yuyueriqi` datetime DEFAULT NULL COMMENT '预约日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615444024769 DEFAULT CHARSET=utf8 COMMENT='预约看房';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuekanfang`
--

LOCK TABLES `yuyuekanfang` WRITE;
/*!40000 ALTER TABLE `yuyuekanfang` DISABLE KEYS */;
INSERT INTO `yuyuekanfang` VALUES (41,'2021-03-11 06:13:27','预约编号1','房屋名称1','房屋类型1','http://localhost:8080/springbootyjn76/upload/yuyuekanfang_tupian1.jpg','面积1','房屋状态1','小区1',1,1,'租赁金额1','押金1','2021-03-11 14:13:27','用户名1','手机1','身份证1','是',''),(42,'2021-03-11 06:13:27','预约编号2','房屋名称2','房屋类型2','http://localhost:8080/springbootyjn76/upload/yuyuekanfang_tupian2.jpg','面积2','房屋状态2','小区2',2,2,'租赁金额2','押金2','2021-03-11 14:13:27','用户名2','手机2','身份证2','是',''),(43,'2021-03-11 06:13:27','预约编号3','房屋名称3','房屋类型3','http://localhost:8080/springbootyjn76/upload/yuyuekanfang_tupian3.jpg','面积3','房屋状态3','小区3',3,3,'租赁金额3','押金3','2021-03-11 14:13:27','用户名3','手机3','身份证3','是',''),(44,'2021-03-11 06:13:27','预约编号4','房屋名称4','房屋类型4','http://localhost:8080/springbootyjn76/upload/yuyuekanfang_tupian4.jpg','面积4','房屋状态4','小区4',4,4,'租赁金额4','押金4','2021-03-11 14:13:27','用户名4','手机4','身份证4','是',''),(45,'2021-03-11 06:13:27','预约编号5','房屋名称5','房屋类型5','http://localhost:8080/springbootyjn76/upload/yuyuekanfang_tupian5.jpg','面积5','房屋状态5','小区5',5,5,'租赁金额5','押金5','2021-03-11 14:13:27','用户名5','手机5','身份证5','是',''),(46,'2021-03-11 06:13:27','预约编号6','房屋名称6','房屋类型6','http://localhost:8080/springbootyjn76/upload/yuyuekanfang_tupian6.jpg','面积6','房屋状态6','小区6',6,6,'租赁金额6','押金6','2021-03-11 14:13:27','用户名6','手机6','身份证6','是',''),(1615443329911,'2021-03-11 06:15:29','20213111415226979592','房屋名称6','房屋类型6','http://localhost:8080/springbootyjn76/upload/fangwuxinxi_tupian6.jpg','面积6','可租','小区6',6,12,'72','6','2021-03-11 14:15:28','用户1','13823888881','440300199101010001','是','ok'),(1615444024768,'2021-03-11 06:27:03','202131114265298203707','新纪家园5栋604','三房两厅','http://localhost:8080/springbootyjn76/upload/1615443809552.jpg','100平','可租','新纪家园',3000,12,'36000','3000','2021-03-12 10:00:00','1','12312312312','123456789789456123','是','ok');
/*!40000 ALTER TABLE `yuyuekanfang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixianqianyue`
--

DROP TABLE IF EXISTS `zaixianqianyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixianqianyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hetongbianhao` varchar(200) DEFAULT NULL COMMENT '合同编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `xiaoqu` varchar(200) DEFAULT NULL COMMENT '小区',
  `yuezujiage` varchar(200) DEFAULT NULL COMMENT '月租价格',
  `zulinyueshu` varchar(200) DEFAULT NULL COMMENT '租赁月数',
  `zulinjine` int(11) DEFAULT NULL COMMENT '租赁金额',
  `yajin` int(11) DEFAULT NULL COMMENT '押金',
  `hetongjine` varchar(200) DEFAULT NULL COMMENT '合同金额',
  `shengxiaoriqi` date DEFAULT NULL COMMENT '生效日期',
  `youxiaoqizhi` date DEFAULT NULL COMMENT '有效期至',
  `hetongneirong` varchar(200) DEFAULT NULL COMMENT '合同内容',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hetongbianhao` (`hetongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615444180386 DEFAULT CHARSET=utf8 COMMENT='在线签约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixianqianyue`
--

LOCK TABLES `zaixianqianyue` WRITE;
/*!40000 ALTER TABLE `zaixianqianyue` DISABLE KEYS */;
INSERT INTO `zaixianqianyue` VALUES (51,'2021-03-11 06:13:27','合同编号1','房屋名称1','房屋类型1','小区1','月租价格1','租赁月数1',1,1,'合同金额1','2021-03-11','2021-03-11','','用户名1','手机1','是','','未支付'),(52,'2021-03-11 06:13:27','合同编号2','房屋名称2','房屋类型2','小区2','月租价格2','租赁月数2',2,2,'合同金额2','2021-03-11','2021-03-11','','用户名2','手机2','是','','未支付'),(53,'2021-03-11 06:13:27','合同编号3','房屋名称3','房屋类型3','小区3','月租价格3','租赁月数3',3,3,'合同金额3','2021-03-11','2021-03-11','','用户名3','手机3','是','','未支付'),(54,'2021-03-11 06:13:27','合同编号4','房屋名称4','房屋类型4','小区4','月租价格4','租赁月数4',4,4,'合同金额4','2021-03-11','2021-03-11','','用户名4','手机4','是','','未支付'),(55,'2021-03-11 06:13:27','合同编号5','房屋名称5','房屋类型5','小区5','月租价格5','租赁月数5',5,5,'合同金额5','2021-03-11','2021-03-11','','用户名5','手机5','是','','未支付'),(56,'2021-03-11 06:13:27','合同编号6','房屋名称6','房屋类型6','小区6','月租价格6','租赁月数6',6,6,'合同金额6','2021-03-11','2021-03-11','','用户名6','手机6','是','','未支付'),(1615443362221,'2021-03-11 06:16:01','1615443356456','房屋名称6','房屋类型6','小区6','6','12',72,6,'78','2021-03-11','2021-03-11',NULL,'用户1','13823888881','否',NULL,'已支付'),(1615444180385,'2021-03-11 06:29:39','1615444165076','新纪家园5栋604','三房两厅','新纪家园','3000','12',36000,3000,'39000','2021-03-11','2022-03-11','http://localhost:8080/springbootyjn76/upload/1615444177899.doc','1','12312312312','是','同意条款','已支付');
/*!40000 ALTER TABLE `zaixianqianyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zulinpingjia`
--

DROP TABLE IF EXISTS `zulinpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zulinpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hetongbianhao` varchar(200) DEFAULT NULL COMMENT '合同编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `xiaoqu` varchar(200) DEFAULT NULL COMMENT '小区',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615444345720 DEFAULT CHARSET=utf8 COMMENT='租赁评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zulinpingjia`
--

LOCK TABLES `zulinpingjia` WRITE;
/*!40000 ALTER TABLE `zulinpingjia` DISABLE KEYS */;
INSERT INTO `zulinpingjia` VALUES (61,'2021-03-11 06:13:27','合同编号1','房屋名称1','房屋类型1','小区1','1','评价内容1','2021-03-11','用户名1','手机1','是',''),(62,'2021-03-11 06:13:27','合同编号2','房屋名称2','房屋类型2','小区2','1','评价内容2','2021-03-11','用户名2','手机2','是',''),(63,'2021-03-11 06:13:27','合同编号3','房屋名称3','房屋类型3','小区3','1','评价内容3','2021-03-11','用户名3','手机3','是',''),(64,'2021-03-11 06:13:27','合同编号4','房屋名称4','房屋类型4','小区4','1','评价内容4','2021-03-11','用户名4','手机4','是',''),(65,'2021-03-11 06:13:27','合同编号5','房屋名称5','房屋类型5','小区5','1','评价内容5','2021-03-11','用户名5','手机5','是',''),(66,'2021-03-11 06:13:27','合同编号6','房屋名称6','房屋类型6','小区6','1','评价内容6','2021-03-11','用户名6','手机6','是',''),(1615444345719,'2021-03-11 06:32:24','1615444165076','新纪家园5栋604','三房两厅','新纪家园','4','房子住着很舒服，采光很好','2021-03-11','1','12312312312','是','感谢支持');
/*!40000 ALTER TABLE `zulinpingjia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-12 10:13:20
