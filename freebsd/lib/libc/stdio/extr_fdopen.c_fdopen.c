
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int _flags; int _file; int _close; int _seek; int _write; int _read; struct TYPE_4__* _cookie; int _flags2; } ;
typedef TYPE_1__ FILE ;


 int EINVAL ;
 int EMFILE ;
 int FD_CLOEXEC ;
 int F_GETFL ;
 int F_SETFD ;
 int O_ACCMODE ;
 int O_APPEND ;
 int O_CLOEXEC ;
 int O_EXEC ;
 int O_RDWR ;
 int SHRT_MAX ;
 int __S2OAP ;
 int __SAPP ;
 int __sclose ;
 int __sflags (char const*,int*) ;
 TYPE_1__* __sfp () ;
 int __sread ;
 int __sseek ;
 int __swrite ;
 int _fcntl (int,int ,int ) ;
 int errno ;

FILE *
fdopen(int fd, const char *mode)
{
 FILE *fp;
 int flags, oflags, fdflags, tmp;
 if (fd > SHRT_MAX) {
  errno = EMFILE;
  return (((void*)0));
 }

 if ((flags = __sflags(mode, &oflags)) == 0)
  return (((void*)0));


 if ((fdflags = _fcntl(fd, F_GETFL, 0)) < 0)
  return (((void*)0));

 tmp = fdflags & (O_ACCMODE | O_EXEC);
 if (tmp != O_RDWR && (tmp != (oflags & O_ACCMODE))) {
  errno = EINVAL;
  return (((void*)0));
 }

 if ((fp = __sfp()) == ((void*)0))
  return (((void*)0));

 if ((oflags & O_CLOEXEC) && _fcntl(fd, F_SETFD, FD_CLOEXEC) == -1) {
  fp->_flags = 0;
  return (((void*)0));
 }

 fp->_flags = flags;





 if (fdflags & O_APPEND)
  fp->_flags2 |= __S2OAP;
 else if (oflags & O_APPEND)
  fp->_flags |= __SAPP;
 fp->_file = fd;
 fp->_cookie = fp;
 fp->_read = __sread;
 fp->_write = __swrite;
 fp->_seek = __sseek;
 fp->_close = __sclose;
 return (fp);
}
