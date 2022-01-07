
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_rt_sigsuspend_args {int sigsetsize; int newset; } ;
typedef int sigset_t ;
typedef int l_sigset_t ;


 int EINVAL ;
 int copyin (int ,int *,int) ;
 int kern_sigsuspend (struct thread*,int ) ;
 int linux_to_bsd_sigset (int *,int *) ;

int
linux_rt_sigsuspend(struct thread *td, struct linux_rt_sigsuspend_args *uap)
{
 l_sigset_t lmask;
 sigset_t sigmask;
 int error;

 if (uap->sigsetsize != sizeof(l_sigset_t))
  return (EINVAL);

 error = copyin(uap->newset, &lmask, sizeof(l_sigset_t));
 if (error)
  return (error);

 linux_to_bsd_sigset(&lmask, &sigmask);
 return (kern_sigsuspend(td, sigmask));
}
