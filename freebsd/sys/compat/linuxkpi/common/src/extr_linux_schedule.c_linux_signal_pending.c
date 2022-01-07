
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; int td_sigmask; int td_siglist; } ;
struct task_struct {struct thread* task_thread; } ;
typedef int sigset_t ;
struct TYPE_3__ {int p_siglist; } ;


 int PROC_LOCK (TYPE_1__*) ;
 int PROC_UNLOCK (TYPE_1__*) ;
 int SIGISEMPTY (int ) ;
 int SIGSETNAND (int ,int ) ;
 int SIGSETOR (int ,int ) ;

bool
linux_signal_pending(struct task_struct *task)
{
 struct thread *td;
 sigset_t pending;

 td = task->task_thread;
 PROC_LOCK(td->td_proc);
 pending = td->td_siglist;
 SIGSETOR(pending, td->td_proc->p_siglist);
 SIGSETNAND(pending, td->td_sigmask);
 PROC_UNLOCK(td->td_proc);
 return (!SIGISEMPTY(pending));
}
