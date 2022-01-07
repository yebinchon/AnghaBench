
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int sigset_t ;
typedef int siginfo_t ;


 size_t INTERPOS_sigtimedwait ;
 scalar_t__* __libc_interposing ;
 int stub1 (int const*,int *,struct timespec const*) ;

int
sigtimedwait(const sigset_t * __restrict set, siginfo_t * __restrict info,
    const struct timespec * __restrict t)
{

 return (((int (*)(const sigset_t *, siginfo_t *,
     const struct timespec *))
     __libc_interposing[INTERPOS_sigtimedwait])(set, info, t));
}
