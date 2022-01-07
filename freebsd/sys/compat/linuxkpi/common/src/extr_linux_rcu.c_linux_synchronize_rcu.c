
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct thread {int td_pinned; int td_priority; } ;


 int DROP_GIANT () ;
 int PCPU_GET (int ) ;
 int PICKUP_GIANT () ;
 scalar_t__ RCU_SKIP () ;
 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*) ;
 int ck_epoch_synchronize_wait (int *,int *,int *) ;
 int cpuid ;
 struct thread* curthread ;
 int linux_epoch ;
 int linux_synchronize_rcu_cb ;
 int sched_bind (struct thread*,int) ;
 int sched_is_bound (struct thread*) ;
 int sched_prio (struct thread*,int ) ;
 int sched_unbind (struct thread*) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

void
linux_synchronize_rcu(void)
{
 struct thread *td;
 int was_bound;
 int old_cpu;
 int old_pinned;
 u_char old_prio;

 if (RCU_SKIP())
  return;

 WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, ((void*)0),
     "linux_synchronize_rcu() can sleep");

 td = curthread;





 thread_lock(td);

 DROP_GIANT();

 old_cpu = PCPU_GET(cpuid);
 old_pinned = td->td_pinned;
 old_prio = td->td_priority;
 was_bound = sched_is_bound(td);
 sched_unbind(td);
 td->td_pinned = 0;
 sched_bind(td, old_cpu);

 ck_epoch_synchronize_wait(&linux_epoch,
     &linux_synchronize_rcu_cb, ((void*)0));


 if (was_bound != 0) {
  sched_bind(td, old_cpu);
 } else {

  if (old_pinned != 0)
   sched_bind(td, old_cpu);
  sched_unbind(td);
 }

 td->td_pinned = old_pinned;


 sched_prio(td, old_prio);
 thread_unlock(td);

 PICKUP_GIANT();
}
