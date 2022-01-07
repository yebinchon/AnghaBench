
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int DROP_GIANT () ;
 int ERESTARTSYS ;
 int EWOULDBLOCK ;
 int MPASS (int) ;
 int PICKUP_GIANT () ;
 int SLEEPQ_INTERRUPTIBLE ;
 int SLEEPQ_SLEEP ;
 int TASK_INTERRUPTIBLE ;
 int TASK_NORMAL ;
 int TASK_PARKED ;
 int linux_schedule_save_interrupt_value (struct task_struct*,int) ;
 int sleepq_add (void*,int *,char const*,int,int ) ;
 int sleepq_set_timeout (void*,int) ;
 int sleepq_timedwait (void*,int ) ;
 int sleepq_timedwait_sig (void*,int ) ;
 int sleepq_wait (void*,int ) ;
 int sleepq_wait_sig (void*,int ) ;

__attribute__((used)) static int
linux_add_to_sleepqueue(void *wchan, struct task_struct *task,
    const char *wmesg, int timeout, int state)
{
 int flags, ret;

 MPASS((state & ~(TASK_PARKED | TASK_NORMAL)) == 0);

 flags = SLEEPQ_SLEEP | ((state & TASK_INTERRUPTIBLE) != 0 ?
     SLEEPQ_INTERRUPTIBLE : 0);

 sleepq_add(wchan, ((void*)0), wmesg, flags, 0);
 if (timeout != 0)
  sleepq_set_timeout(wchan, timeout);

 DROP_GIANT();
 if ((state & TASK_INTERRUPTIBLE) != 0) {
  if (timeout == 0)
   ret = -sleepq_wait_sig(wchan, 0);
  else
   ret = -sleepq_timedwait_sig(wchan, 0);
 } else {
  if (timeout == 0) {
   sleepq_wait(wchan, 0);
   ret = 0;
  } else
   ret = -sleepq_timedwait(wchan, 0);
 }
 PICKUP_GIANT();


 if (ret != 0 && ret != -EWOULDBLOCK) {
  linux_schedule_save_interrupt_value(task, ret);
  ret = -ERESTARTSYS;
 }
 return (ret);
}
