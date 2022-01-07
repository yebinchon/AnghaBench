
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int EAGAIN ;
 int EINTR ;
 int EIO ;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_SETFD ;
 int O_CLOEXEC ;
 int O_NOFOLLOW ;
 int O_RDONLY ;
 int close (int) ;
 int errno ;
 scalar_t__ fallback_gotdata (void*,size_t) ;
 int fcntl (int,int ,...) ;
 int open (char*,int,int ) ;
 int read (int,char*,size_t) ;

__attribute__((used)) static int
fallback_getentropy_urandom(void *buf, size_t len)
{
 size_t i;
 int fd, flags;
 int save_errno = errno;

start:

 flags = O_RDONLY;






 fd = open("/dev/urandom", flags, 0);
 if (fd == -1) {
  if (errno == EINTR)
   goto start;
  goto nodevrandom;
 }





 for (i = 0; i < len; ) {
  size_t wanted = len - i;
  ssize_t ret = read(fd, (char*)buf + i, wanted);

  if (ret == -1) {
   if (errno == EAGAIN || errno == EINTR)
    continue;
   close(fd);
   goto nodevrandom;
  }
  i += ret;
 }
 close(fd);
 if (fallback_gotdata(buf, len) == 0) {
  errno = save_errno;
  return 0;
 }
nodevrandom:
 errno = EIO;
 return -1;
}
