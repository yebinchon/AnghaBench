
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_SETFD ;
 int fcntl (int,int ,...) ;

void
__archive_ensure_cloexec_flag(int fd)
{



 int flags;

 if (fd >= 0) {
  flags = fcntl(fd, F_GETFD);
  if (flags != -1 && (flags & FD_CLOEXEC) == 0)
   fcntl(fd, F_SETFD, flags | FD_CLOEXEC);
 }

}
