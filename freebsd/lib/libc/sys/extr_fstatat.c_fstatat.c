
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct freebsd11_stat {int dummy; } ;


 scalar_t__ INO64_FIRST ;
 int SYS_freebsd11_fstatat ;
 scalar_t__ __getosreldate () ;
 int __stat11_to_stat (struct freebsd11_stat*,struct stat*) ;
 int __sys_fstatat (int,char const*,struct stat*,int) ;
 int syscall (int ,int,char const*,struct freebsd11_stat*,int) ;

int
fstatat(int fd, const char *path, struct stat *sb, int flag)
{
 struct freebsd11_stat stat11;
 int rv;

 if (__getosreldate() >= INO64_FIRST)
  return (__sys_fstatat(fd, path, sb, flag));
 rv = syscall(SYS_freebsd11_fstatat, fd, path, &stat11, flag);
 if (rv == 0)
  __stat11_to_stat(&stat11, sb);
 return (rv);
}
