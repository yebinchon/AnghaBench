
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; int td_siglist; } ;
struct task_struct {struct thread* task_thread; } ;
struct TYPE_3__ {int p_siglist; } ;


 int PROC_LOCK (TYPE_1__*) ;
 int PROC_UNLOCK (TYPE_1__*) ;
 scalar_t__ SIGISMEMBER (int ,int ) ;
 int SIGKILL ;

bool
linux_fatal_signal_pending(struct task_struct *task)
{
 struct thread *td;
 bool ret;

 td = task->task_thread;
 PROC_LOCK(td->td_proc);
 ret = SIGISMEMBER(td->td_siglist, SIGKILL) ||
     SIGISMEMBER(td->td_proc->p_siglist, SIGKILL);
 PROC_UNLOCK(td->td_proc);
 return (ret);
}
