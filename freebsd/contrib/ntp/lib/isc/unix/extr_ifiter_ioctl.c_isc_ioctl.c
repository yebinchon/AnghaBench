
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int ioctl (int,int,char*) ;

int
isc_ioctl(int fildes, int req, char *arg) {
 int trys;
 int ret;

 for (trys = 0; trys < 3; trys++) {
  if ((ret = ioctl(fildes, req, arg)) < 0) {
   if (errno == EINTR)
    continue;
  }
  break;
 }
 return (ret);
}
