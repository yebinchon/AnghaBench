
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_rt_sigprocmask_args {int sigsetsize; int * omask; int * mask; int how; } ;
typedef int l_sigset_t ;


 int EINVAL ;
 int copyin (int *,int *,int) ;
 int copyout (int *,int *,int) ;
 int linux_do_sigprocmask (struct thread*,int ,int *,int *) ;

int
linux_rt_sigprocmask(struct thread *td, struct linux_rt_sigprocmask_args *args)
{
 l_sigset_t set, oset;
 int error;

 if (args->sigsetsize != sizeof(l_sigset_t))
  return (EINVAL);

 if (args->mask != ((void*)0)) {
  error = copyin(args->mask, &set, sizeof(l_sigset_t));
  if (error)
   return (error);
 }

 error = linux_do_sigprocmask(td, args->how,
         args->mask ? &set : ((void*)0),
         args->omask ? &oset : ((void*)0));

 if (args->omask != ((void*)0) && !error) {
  error = copyout(&oset, args->omask, sizeof(l_sigset_t));
 }

 return (error);
}
