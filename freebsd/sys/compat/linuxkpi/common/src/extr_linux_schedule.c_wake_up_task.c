
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int state; } ;


 int SLEEPQ_SLEEP ;
 int TASK_WAKING ;
 unsigned int atomic_read (int *) ;
 int kick_proc0 () ;
 int set_task_state (struct task_struct*,int ) ;
 int sleepq_lock (struct task_struct*) ;
 int sleepq_release (struct task_struct*) ;
 int sleepq_signal (struct task_struct*,int ,int ,int ) ;

__attribute__((used)) static int
wake_up_task(struct task_struct *task, unsigned int state)
{
 int ret, wakeup_swapper;

 ret = wakeup_swapper = 0;
 sleepq_lock(task);
 if ((atomic_read(&task->state) & state) != 0) {
  set_task_state(task, TASK_WAKING);
  wakeup_swapper = sleepq_signal(task, SLEEPQ_SLEEP, 0, 0);
  ret = 1;
 }
 sleepq_release(task);
 if (wakeup_swapper)
  kick_proc0();
 return (ret);
}
