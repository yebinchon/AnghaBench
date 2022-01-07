
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_proc; } ;
struct sched_param {int dummy; } ;
struct linux_sched_setparam_args {int pid; int param; } ;
typedef int sched_param ;


 int ESRCH ;
 int PROC_UNLOCK (int ) ;
 int copyin (int ,struct sched_param*,int) ;
 int kern_sched_setparam (struct thread*,struct thread*,struct sched_param*) ;
 struct thread* linux_tdfind (struct thread*,int ,int) ;

int
linux_sched_setparam(struct thread *td,
    struct linux_sched_setparam_args *uap)
{
 struct sched_param sched_param;
 struct thread *tdt;
 int error;

 error = copyin(uap->param, &sched_param, sizeof(sched_param));
 if (error)
  return (error);

 tdt = linux_tdfind(td, uap->pid, -1);
 if (tdt == ((void*)0))
  return (ESRCH);

 error = kern_sched_setparam(td, tdt, &sched_param);
 PROC_UNLOCK(tdt->td_proc);
 return (error);
}
