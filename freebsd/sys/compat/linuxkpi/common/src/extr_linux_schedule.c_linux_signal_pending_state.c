
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int MPASS (int) ;
 long TASK_INTERRUPTIBLE ;
 long TASK_NORMAL ;
 int linux_signal_pending (struct task_struct*) ;

bool
linux_signal_pending_state(long state, struct task_struct *task)
{

 MPASS((state & ~TASK_NORMAL) == 0);

 if ((state & TASK_INTERRUPTIBLE) == 0)
  return (0);
 return (linux_signal_pending(task));
}
