
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 size_t INTERPOS_sigprocmask ;
 scalar_t__* __libc_interposing ;
 int stub1 (int,int const*,int *) ;

int
sigprocmask(int how, const sigset_t *set, sigset_t *oset)
{

 return (((int (*)(int, const sigset_t *, sigset_t *))
     __libc_interposing[INTERPOS_sigprocmask])(how, set, oset));
}
