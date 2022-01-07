
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;
typedef int off_t ;


 int DIOCGMEDIASIZE ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int errno ;
 int fstat (int,struct stat*) ;
 int g_gate_xlog (char*,...) ;
 int ioctl (int,int ,int *) ;
 int strerror (int ) ;

off_t
g_gate_mediasize(int fd)
{
 off_t mediasize;
 struct stat sb;

 if (fstat(fd, &sb) == -1)
  g_gate_xlog("fstat(): %s.", strerror(errno));
 if (S_ISCHR(sb.st_mode)) {
  if (ioctl(fd, DIOCGMEDIASIZE, &mediasize) == -1) {
   g_gate_xlog("Can't get media size: %s.",
       strerror(errno));
  }
 } else if (S_ISREG(sb.st_mode)) {
  mediasize = sb.st_size;
 } else {
  g_gate_xlog("Unsupported file system object.");
 }
 return (mediasize);
}
