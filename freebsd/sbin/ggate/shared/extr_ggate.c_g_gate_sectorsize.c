
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int DIOCGSECTORSIZE ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int errno ;
 int fstat (int,struct stat*) ;
 int g_gate_xlog (char*,...) ;
 int ioctl (int,int ,unsigned int*) ;
 int strerror (int ) ;

unsigned
g_gate_sectorsize(int fd)
{
 unsigned secsize;
 struct stat sb;

 if (fstat(fd, &sb) == -1)
  g_gate_xlog("fstat(): %s.", strerror(errno));
 if (S_ISCHR(sb.st_mode)) {
  if (ioctl(fd, DIOCGSECTORSIZE, &secsize) == -1) {
   g_gate_xlog("Can't get sector size: %s.",
       strerror(errno));
  }
 } else if (S_ISREG(sb.st_mode)) {
  secsize = 512;
 } else {
  g_gate_xlog("Unsupported file system object.");
 }
 return (secsize);
}
