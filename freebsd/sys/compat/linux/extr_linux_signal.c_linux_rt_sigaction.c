
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_rt_sigaction_args {int sigsetsize; int * oact; int * act; int sig; } ;
typedef int l_sigset_t ;
typedef int l_sigaction_t ;


 int EINVAL ;
 int copyin (int *,int *,int) ;
 int copyout (int *,int *,int) ;
 int linux_do_sigaction (struct thread*,int ,int *,int *) ;

int
linux_rt_sigaction(struct thread *td, struct linux_rt_sigaction_args *args)
{
 l_sigaction_t nsa, osa;
 int error;

 if (args->sigsetsize != sizeof(l_sigset_t))
  return (EINVAL);

 if (args->act != ((void*)0)) {
  error = copyin(args->act, &nsa, sizeof(l_sigaction_t));
  if (error)
   return (error);
 }

 error = linux_do_sigaction(td, args->sig,
       args->act ? &nsa : ((void*)0),
       args->oact ? &osa : ((void*)0));

 if (args->oact != ((void*)0) && !error) {
  error = copyout(&osa, args->oact, sizeof(l_sigaction_t));
 }

 return (error);
}
