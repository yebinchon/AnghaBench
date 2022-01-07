
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int state; } ;


 int ERESTARTSYS ;
 int MAX_SCHEDULE_TIMEOUT ;
 int TASK_RUNNING ;
 int TASK_WAKING ;
 int atomic_read (int *) ;
 struct task_struct* current ;
 int linux_add_to_sleepqueue (struct task_struct*,struct task_struct*,char*,int,int) ;
 int set_task_state (struct task_struct*,int ) ;
 int sleepq_lock (struct task_struct*) ;
 int sleepq_release (struct task_struct*) ;
 int ticks ;

int
linux_schedule_timeout(int timeout)
{
 struct task_struct *task;
 int ret;
 int state;
 int remainder;

 task = current;


 if (timeout < 1)
  timeout = 1;
 else if (timeout == MAX_SCHEDULE_TIMEOUT)
  timeout = 0;

 remainder = ticks + timeout;

 sleepq_lock(task);
 state = atomic_read(&task->state);
 if (state != TASK_WAKING) {
  ret = linux_add_to_sleepqueue(task, task, "sched", timeout,
      state);
 } else {
  sleepq_release(task);
  ret = 0;
 }
 set_task_state(task, TASK_RUNNING);

 if (timeout == 0)
  return (MAX_SCHEDULE_TIMEOUT);


 remainder -= ticks;


 if (ret == -ERESTARTSYS && remainder < 1)
  remainder = 1;
 else if (remainder < 0)
  remainder = 0;
 else if (remainder > timeout)
  remainder = timeout;
 return (remainder);
}
