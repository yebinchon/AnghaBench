
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct task_struct* td_lkpi_task; } ;
struct task_struct {void* task_data; int * task_fn; } ;
typedef int linux_task_fn_t ;


 int PI_SWI (int ) ;
 int SRQ_BORING ;
 int SWI_NET ;
 int linux_set_current (struct thread*) ;
 int sched_add (struct thread*,int ) ;
 int sched_prio (struct thread*,int ) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

struct task_struct *
linux_kthread_setup_and_run(struct thread *td, linux_task_fn_t *task_fn, void *arg)
{
 struct task_struct *task;

 linux_set_current(td);

 task = td->td_lkpi_task;
 task->task_fn = task_fn;
 task->task_data = arg;

 thread_lock(td);

 sched_prio(td, PI_SWI(SWI_NET));

 sched_add(td, SRQ_BORING);
 thread_unlock(td);

 return (task);
}
