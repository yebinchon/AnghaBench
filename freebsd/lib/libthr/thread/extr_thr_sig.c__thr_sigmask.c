
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 scalar_t__ __thr_sigprocmask (int,int const*,int *) ;
 int errno ;

int
_thr_sigmask(int how, const sigset_t *set, sigset_t *oset)
{

 if (__thr_sigprocmask(how, set, oset))
  return (errno);
 return (0);
}
