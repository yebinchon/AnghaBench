
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int * td_retval; int td_proc; } ;
struct linux_sched_getscheduler_args {int pid; } ;


 int ESRCH ;
 int LINUX_SCHED_FIFO ;
 int LINUX_SCHED_OTHER ;
 int LINUX_SCHED_RR ;
 int PROC_UNLOCK (int ) ;



 int kern_sched_getscheduler (struct thread*,struct thread*,int*) ;
 struct thread* linux_tdfind (struct thread*,int ,int) ;

int
linux_sched_getscheduler(struct thread *td,
    struct linux_sched_getscheduler_args *args)
{
 struct thread *tdt;
 int error, policy;

 tdt = linux_tdfind(td, args->pid, -1);
 if (tdt == ((void*)0))
  return (ESRCH);

 error = kern_sched_getscheduler(td, tdt, &policy);
 PROC_UNLOCK(tdt->td_proc);

 switch (policy) {
 case 129:
  td->td_retval[0] = LINUX_SCHED_OTHER;
  break;
 case 130:
  td->td_retval[0] = LINUX_SCHED_FIFO;
  break;
 case 128:
  td->td_retval[0] = LINUX_SCHED_RR;
  break;
 }
 return (error);
}
