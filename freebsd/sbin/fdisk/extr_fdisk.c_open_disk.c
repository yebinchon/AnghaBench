
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ B_flag ;
 scalar_t__ ENXIO ;
 scalar_t__ EPERM ;
 scalar_t__ I_flag ;
 scalar_t__ a_flag ;
 int disk ;
 scalar_t__ errno ;
 int fd ;
 int g_open (int ,int) ;
 int get_params () ;
 int warnx (char*,int ) ;

__attribute__((used)) static int
open_disk(int flag)
{
 int rwmode;


 rwmode = (a_flag || I_flag || B_flag || flag);
 fd = g_open(disk, rwmode);

 if (fd == -1 && errno == EPERM && rwmode)
  fd = g_open(disk, 0);
 if (fd == -1 && errno == ENXIO)
  return -2;
 if (fd == -1) {
  warnx("can't open device %s", disk);
  return -1;
 }
 if (get_params() == -1) {
  warnx("can't get disk parameters on %s", disk);
  return -1;
 }
 return fd;
}
