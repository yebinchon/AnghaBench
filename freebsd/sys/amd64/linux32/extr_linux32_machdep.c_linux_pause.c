
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_sigmask; struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct linux_pause_args {int dummy; } ;
typedef int sigset_t ;


 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int kern_sigsuspend (struct thread*,int ) ;

int
linux_pause(struct thread *td, struct linux_pause_args *args)
{
 struct proc *p = td->td_proc;
 sigset_t sigmask;

 PROC_LOCK(p);
 sigmask = td->td_sigmask;
 PROC_UNLOCK(p);
 return (kern_sigsuspend(td, sigmask));
}
