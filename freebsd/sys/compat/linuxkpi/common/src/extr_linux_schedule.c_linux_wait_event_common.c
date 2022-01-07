
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_t ;
typedef int wait_queue_head_t ;
struct task_struct {TYPE_1__* task_thread; int state; } ;
typedef int spinlock_t ;
struct TYPE_2__ {int td_proc; } ;


 int MAX_SCHEDULE_TIMEOUT ;
 int PHOLD (int ) ;
 int PRELE (int ) ;
 scalar_t__ TASK_WAKING ;
 scalar_t__ atomic_read (int *) ;
 struct task_struct* current ;
 int linux_add_to_sleepqueue (struct task_struct*,struct task_struct*,char*,int,unsigned int) ;
 int sleepq_lock (struct task_struct*) ;
 int sleepq_release (struct task_struct*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int
linux_wait_event_common(wait_queue_head_t *wqh, wait_queue_t *wq, int timeout,
    unsigned int state, spinlock_t *lock)
{
 struct task_struct *task;
 int ret;

 if (lock != ((void*)0))
  spin_unlock_irq(lock);


 if (timeout < 1)
  timeout = 1;
 else if (timeout == MAX_SCHEDULE_TIMEOUT)
  timeout = 0;

 task = current;





 PHOLD(task->task_thread->td_proc);
 sleepq_lock(task);
 if (atomic_read(&task->state) != TASK_WAKING) {
  ret = linux_add_to_sleepqueue(task, task, "wevent", timeout,
      state);
 } else {
  sleepq_release(task);
  ret = 0;
 }
 PRELE(task->task_thread->td_proc);

 if (lock != ((void*)0))
  spin_lock_irq(lock);
 return (ret);
}
