
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int O_CLOEXEC ;
 scalar_t__ SHM_OPEN2_OSREL ;
 int SYS_freebsd12_shm_open ;
 scalar_t__ __getosreldate () ;
 int __sys_shm_open2 (char const*,int,int ,int ,int *) ;
 int syscall (int ,char const*,int,int ) ;

int
shm_open(const char *path, int flags, mode_t mode)
{

 if (__getosreldate() >= SHM_OPEN2_OSREL)
  return (__sys_shm_open2(path, flags | O_CLOEXEC, mode, 0,
      ((void*)0)));







 return (syscall(SYS_freebsd12_shm_open, path, flags, mode));
}
