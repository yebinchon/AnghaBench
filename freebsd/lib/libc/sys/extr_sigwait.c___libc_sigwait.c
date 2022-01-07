
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int EINTR ;
 int __sys_sigwait (int const*,int*) ;

int
__libc_sigwait(const sigset_t *set, int *sig)
{
 int ret;


 do {
  ret = __sys_sigwait(set, sig);
 } while (ret == EINTR);
 return (ret);
}
