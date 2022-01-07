
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int kthread_flags; } ;


 int KTHREAD_IS_PARKED_MASK ;
 int KTHREAD_SHOULD_PARK_MASK ;
 int TASK_PARKED ;
 int atomic_andnot (int ,int *) ;
 int atomic_fetch_andnot (int,int *) ;
 int wake_up_state (struct task_struct*,int ) ;

void
linux_kthread_unpark(struct task_struct *task)
{

 atomic_andnot(KTHREAD_SHOULD_PARK_MASK, &task->kthread_flags);
 if ((atomic_fetch_andnot(KTHREAD_IS_PARKED_MASK, &task->kthread_flags) &
     KTHREAD_IS_PARKED_MASK) != 0)
  wake_up_state(task, TASK_PARKED);
}
