
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_proc; } ;
struct sched_param {int dummy; } ;
struct linux_sched_setscheduler_args {int policy; int pid; int param; } ;
typedef int sched_param ;


 int EINVAL ;
 int ESRCH ;



 int PROC_UNLOCK (int ) ;
 int SCHED_FIFO ;
 int SCHED_OTHER ;
 int SCHED_RR ;
 int copyin (int ,struct sched_param*,int) ;
 int kern_sched_setscheduler (struct thread*,struct thread*,int,struct sched_param*) ;
 struct thread* linux_tdfind (struct thread*,int ,int) ;

int
linux_sched_setscheduler(struct thread *td,
    struct linux_sched_setscheduler_args *args)
{
 struct sched_param sched_param;
 struct thread *tdt;
 int error, policy;

 switch (args->policy) {
 case 129:
  policy = SCHED_OTHER;
  break;
 case 130:
  policy = SCHED_FIFO;
  break;
 case 128:
  policy = SCHED_RR;
  break;
 default:
  return (EINVAL);
 }

 error = copyin(args->param, &sched_param, sizeof(sched_param));
 if (error)
  return (error);

 tdt = linux_tdfind(td, args->pid, -1);
 if (tdt == ((void*)0))
  return (ESRCH);

 error = kern_sched_setscheduler(td, tdt, policy, &sched_param);
 PROC_UNLOCK(tdt->td_proc);
 return (error);
}
