
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_sigmask; int td_siglist; struct proc* td_proc; } ;
struct proc {int p_siglist; } ;
struct linux_rt_sigpending_args {int sigsetsize; int set; } ;
typedef int sigset_t ;
typedef int lset ;
typedef int l_sigset_t ;


 int EINVAL ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int SIGSETAND (int ,int ) ;
 int SIGSETOR (int ,int ) ;
 int bsd_to_linux_sigset (int *,int *) ;
 int copyout (int *,int ,int) ;

int
linux_rt_sigpending(struct thread *td, struct linux_rt_sigpending_args *args)
{
 struct proc *p = td->td_proc;
 sigset_t bset;
 l_sigset_t lset;

 if (args->sigsetsize > sizeof(lset))
  return (EINVAL);


 PROC_LOCK(p);
 bset = p->p_siglist;
 SIGSETOR(bset, td->td_siglist);
 SIGSETAND(bset, td->td_sigmask);
 PROC_UNLOCK(p);
 bsd_to_linux_sigset(&bset, &lset);
 return (copyout(&lset, args->set, args->sigsetsize));
}
