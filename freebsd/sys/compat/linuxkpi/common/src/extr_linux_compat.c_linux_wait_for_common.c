
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct completion {scalar_t__ done; } ;


 int DROP_GIANT () ;
 int ERESTARTSYS ;
 int PICKUP_GIANT () ;
 scalar_t__ SCHEDULER_STOPPED () ;
 int SLEEPQ_INTERRUPTIBLE ;
 int SLEEPQ_SLEEP ;
 scalar_t__ UINT_MAX ;
 struct task_struct* current ;
 int linux_schedule_save_interrupt_value (struct task_struct*,int) ;
 int sleepq_add (struct completion*,int *,char*,int,int ) ;
 int sleepq_lock (struct completion*) ;
 int sleepq_release (struct completion*) ;
 int sleepq_wait (struct completion*,int ) ;
 int sleepq_wait_sig (struct completion*,int ) ;

int
linux_wait_for_common(struct completion *c, int flags)
{
 struct task_struct *task;
 int error;

 if (SCHEDULER_STOPPED())
  return (0);

 task = current;

 if (flags != 0)
  flags = SLEEPQ_INTERRUPTIBLE | SLEEPQ_SLEEP;
 else
  flags = SLEEPQ_SLEEP;
 error = 0;
 for (;;) {
  sleepq_lock(c);
  if (c->done)
   break;
  sleepq_add(c, ((void*)0), "completion", flags, 0);
  if (flags & SLEEPQ_INTERRUPTIBLE) {
   DROP_GIANT();
   error = -sleepq_wait_sig(c, 0);
   PICKUP_GIANT();
   if (error != 0) {
    linux_schedule_save_interrupt_value(task, error);
    error = -ERESTARTSYS;
    goto intr;
   }
  } else {
   DROP_GIANT();
   sleepq_wait(c, 0);
   PICKUP_GIANT();
  }
 }
 if (c->done != UINT_MAX)
  c->done--;
 sleepq_release(c);

intr:
 return (error);
}
