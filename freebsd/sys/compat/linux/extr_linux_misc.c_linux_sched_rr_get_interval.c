
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct thread {int td_proc; } ;
struct linux_sched_rr_get_interval_args {scalar_t__ pid; int interval; } ;
struct l_timespec {int dummy; } ;
typedef int lts ;


 int EINVAL ;
 int ESRCH ;
 int PROC_UNLOCK (int ) ;
 int copyout (struct l_timespec*,int ,int) ;
 int kern_sched_rr_get_interval_td (struct thread*,struct thread*,struct timespec*) ;
 struct thread* linux_tdfind (struct thread*,scalar_t__,int) ;
 int native_to_linux_timespec (struct l_timespec*,struct timespec*) ;

int
linux_sched_rr_get_interval(struct thread *td,
    struct linux_sched_rr_get_interval_args *uap)
{
 struct timespec ts;
 struct l_timespec lts;
 struct thread *tdt;
 int error;





 if (uap->pid < 0)
  return (EINVAL);

 tdt = linux_tdfind(td, uap->pid, -1);
 if (tdt == ((void*)0))
  return (ESRCH);

 error = kern_sched_rr_get_interval_td(td, tdt, &ts);
 PROC_UNLOCK(tdt->td_proc);
 if (error != 0)
  return (error);
 error = native_to_linux_timespec(&lts, &ts);
 if (error != 0)
  return (error);
 return (copyout(&lts, uap->interval, sizeof(lts)));
}
