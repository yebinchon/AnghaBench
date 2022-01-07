
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int MAX_SCHEDULE_TIMEOUT ;
 unsigned int TASK_RUNNING ;
 void* bit_to_wchan (unsigned long*,int) ;
 struct task_struct* current ;
 int linux_add_to_sleepqueue (void*,struct task_struct*,char*,int,unsigned int) ;
 int set_task_state (struct task_struct*,unsigned int) ;
 int sleepq_lock (void*) ;
 int sleepq_release (void*) ;

int
linux_wait_on_bit_timeout(unsigned long *word, int bit, unsigned int state,
    int timeout)
{
 struct task_struct *task;
 void *wchan;
 int ret;


 if (timeout < 1)
  timeout = 1;
 else if (timeout == MAX_SCHEDULE_TIMEOUT)
  timeout = 0;

 task = current;
 wchan = bit_to_wchan(word, bit);
 for (;;) {
  sleepq_lock(wchan);
  if ((*word & (1 << bit)) == 0) {
   sleepq_release(wchan);
   ret = 0;
   break;
  }
  set_task_state(task, state);
  ret = linux_add_to_sleepqueue(wchan, task, "wbit", timeout,
      state);
  if (ret != 0)
   break;
 }
 set_task_state(task, TASK_RUNNING);

 return (ret);
}
