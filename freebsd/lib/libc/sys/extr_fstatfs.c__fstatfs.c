
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int dummy; } ;
struct freebsd11_statfs {int dummy; } ;


 scalar_t__ INO64_FIRST ;
 int SYS_freebsd11_fstatfs ;
 scalar_t__ __getosreldate () ;
 int __statfs11_to_statfs (struct freebsd11_statfs*,struct statfs*) ;
 int __sys_fstatfs (int,struct statfs*) ;
 int syscall (int ,int,struct freebsd11_statfs*) ;

int
_fstatfs(int fd, struct statfs *buf)
{
 struct freebsd11_statfs statfs11;
 int rv;

 if (__getosreldate() >= INO64_FIRST)
  return (__sys_fstatfs(fd, buf));
 rv = syscall(SYS_freebsd11_fstatfs, fd, &statfs11);
 if (rv == 0)
  __statfs11_to_statfs(&statfs11, buf);
 return (rv);
}
