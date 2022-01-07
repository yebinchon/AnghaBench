
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int dummy; } ;
struct freebsd11_statfs {int dummy; } ;
typedef int ssize_t ;


 int ENOMEM ;
 scalar_t__ INO64_FIRST ;
 int SYS_freebsd11_getfsstat ;
 scalar_t__ __getosreldate () ;
 int __statfs11_to_statfs (struct freebsd11_statfs*,struct statfs*) ;
 int __sys_getfsstat (struct statfs*,long,int) ;
 int errno ;
 int free (struct freebsd11_statfs*) ;
 struct freebsd11_statfs* malloc (int) ;
 int syscall (int ,struct freebsd11_statfs*,int,int) ;

int
getfsstat(struct statfs *buf, long bufsize, int flags)
{
 struct freebsd11_statfs *statfs11 = ((void*)0);
 ssize_t len = 0;
 int rv, i;

 if (__getosreldate() >= INO64_FIRST)
  return (__sys_getfsstat(buf, bufsize, flags));
 if (buf != ((void*)0)) {
  len = sizeof(struct freebsd11_statfs) *
      (bufsize / sizeof(struct statfs));
  statfs11 = malloc(len);
  if (statfs11 == ((void*)0)) {
   errno = ENOMEM;
   return (-1);
  }
 }
 rv = syscall(SYS_freebsd11_getfsstat, statfs11, len, flags);
 if (rv != -1 && buf != ((void*)0)) {
  for (i = 0; i < rv; i++)
   __statfs11_to_statfs(&statfs11[i], &buf[i]);
 }
 free(statfs11);
 return (rv);
}
