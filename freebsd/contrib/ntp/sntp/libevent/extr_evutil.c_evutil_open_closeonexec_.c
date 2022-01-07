
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 scalar_t__ EINVAL ;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int O_CLOEXEC ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ fcntl (int,int ,int ) ;
 int open (char const*,int,int ) ;

int
evutil_open_closeonexec_(const char *pathname, int flags, unsigned mode)
{
 int fd;







 fd = open(pathname, flags, (mode_t)mode);
 if (fd < 0)
  return -1;
 return fd;
}
