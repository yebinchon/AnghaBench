
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int siginfo_t ;


 size_t INTERPOS_sigwaitinfo ;
 scalar_t__* __libc_interposing ;
 int stub1 (int const*,int *) ;

int
sigwaitinfo(const sigset_t * __restrict set, siginfo_t * __restrict info)
{

 return (((int (*)(const sigset_t *, siginfo_t *))
     __libc_interposing[INTERPOS_sigwaitinfo])(set, info));
}
