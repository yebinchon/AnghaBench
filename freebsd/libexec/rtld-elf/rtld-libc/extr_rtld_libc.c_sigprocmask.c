
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int __sys_sigprocmask (int,int const*,int *) ;

int
sigprocmask(int how, const sigset_t *set, sigset_t *oset)
{

 return (__sys_sigprocmask(how, set, oset));
}
