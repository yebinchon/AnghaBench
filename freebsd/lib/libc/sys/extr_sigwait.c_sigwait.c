
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 size_t INTERPOS_sigwait ;
 scalar_t__* __libc_interposing ;
 int stub1 (int const*,int*) ;

int
sigwait(const sigset_t *set, int *sig)
{

 return (((int (*)(const sigset_t *, int *))
     __libc_interposing[INTERPOS_sigwait])(set, sig));
}
