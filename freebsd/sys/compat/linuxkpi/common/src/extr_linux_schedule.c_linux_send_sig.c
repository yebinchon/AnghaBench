
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_proc; } ;
struct task_struct {struct thread* task_thread; } ;


 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int tdsignal (struct thread*,int) ;

void
linux_send_sig(int signo, struct task_struct *task)
{
 struct thread *td;

 td = task->task_thread;
 PROC_LOCK(td->td_proc);
 tdsignal(td, signo);
 PROC_UNLOCK(td->td_proc);
}
