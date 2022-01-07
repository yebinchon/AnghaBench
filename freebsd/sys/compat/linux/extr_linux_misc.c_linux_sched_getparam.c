
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_proc; } ;
struct sched_param {int dummy; } ;
struct linux_sched_getparam_args {int param; int pid; } ;
typedef int sched_param ;


 int ESRCH ;
 int PROC_UNLOCK (int ) ;
 int copyout (struct sched_param*,int ,int) ;
 int kern_sched_getparam (struct thread*,struct thread*,struct sched_param*) ;
 struct thread* linux_tdfind (struct thread*,int ,int) ;

int
linux_sched_getparam(struct thread *td,
    struct linux_sched_getparam_args *uap)
{
 struct sched_param sched_param;
 struct thread *tdt;
 int error;

 tdt = linux_tdfind(td, uap->pid, -1);
 if (tdt == ((void*)0))
  return (ESRCH);

 error = kern_sched_getparam(td, tdt, &sched_param);
 PROC_UNLOCK(tdt->td_proc);
 if (error == 0)
  error = copyout(&sched_param, uap->param,
      sizeof(sched_param));
 return (error);
}
