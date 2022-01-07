
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int off_t ;


 int DIRBLKSIZ ;
 int EINVAL ;
 scalar_t__ INO64_FIRST ;
 int SYS_freebsd11_getdirentries ;
 int __cvt_dirents_from11 (char*,int,char*,size_t) ;
 scalar_t__ __getosreldate () ;
 int __sys_getdirentries (int,char*,size_t,int *) ;
 int errno ;
 int free (char*) ;
 char* malloc (size_t) ;
 size_t roundup (size_t,int ) ;
 int syscall (int ,int,char*,size_t,int *) ;

ssize_t
_getdirentries(int fd, char *buf, size_t nbytes, off_t *basep)
{
 char *oldbuf;
 size_t len;
 ssize_t rv;

 if (__getosreldate() >= INO64_FIRST)
  return (__sys_getdirentries(fd, buf, nbytes, basep));
 len = roundup(nbytes / 4, DIRBLKSIZ);
 oldbuf = malloc(len);
 if (oldbuf == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }
 rv = syscall(SYS_freebsd11_getdirentries, fd, oldbuf, len, basep);
 if (rv == -1) {
  free(oldbuf);
  return (rv);
 }
 if (rv > 0)
  rv = __cvt_dirents_from11(oldbuf, rv, buf, nbytes);
 free(oldbuf);

 return (rv);
}
