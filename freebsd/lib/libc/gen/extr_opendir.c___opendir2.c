
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int O_CLOEXEC ;
 int O_DIRECTORY ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int __DTF_READALL ;
 int __DTF_SKIPREAD ;
 int * __opendir_common (int,int,int) ;
 int _close (int) ;
 int _open (char const*,int) ;
 int errno ;

DIR *
__opendir2(const char *name, int flags)
{
 int fd;
 DIR *dir;
 int saved_errno;

 if ((flags & (__DTF_READALL | __DTF_SKIPREAD)) != 0)
  return (((void*)0));
 if ((fd = _open(name,
     O_RDONLY | O_NONBLOCK | O_DIRECTORY | O_CLOEXEC)) == -1)
  return (((void*)0));

 dir = __opendir_common(fd, flags, 0);
 if (dir == ((void*)0)) {
  saved_errno = errno;
  _close(fd);
  errno = saved_errno;
 }
 return (dir);
}
