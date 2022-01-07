
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int atomic_t ;


 unsigned int TASK_RUNNING ;
 scalar_t__ atomic_read (int *) ;
 struct task_struct* current ;
 int linux_add_to_sleepqueue (void*,struct task_struct*,char*,int ,unsigned int) ;
 int set_task_state (struct task_struct*,unsigned int) ;
 int sleepq_lock (void*) ;
 int sleepq_release (void*) ;

int
linux_wait_on_atomic_t(atomic_t *a, unsigned int state)
{
 struct task_struct *task;
 void *wchan;
 int ret;

 task = current;
 wchan = a;
 for (;;) {
  sleepq_lock(wchan);
  if (atomic_read(a) == 0) {
   sleepq_release(wchan);
   ret = 0;
   break;
  }
  set_task_state(task, state);
  ret = linux_add_to_sleepqueue(wchan, task, "watomic", 0, state);
  if (ret != 0)
   break;
 }
 set_task_state(task, TASK_RUNNING);

 return (ret);
}
