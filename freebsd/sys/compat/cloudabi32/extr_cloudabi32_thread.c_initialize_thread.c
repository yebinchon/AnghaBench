
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_create_args {int tcb; int attr; int tid; } ;
struct thread {int td_tid; } ;


 int cloudabi32_thread_setregs (struct thread*,int *,int ) ;

__attribute__((used)) static int
initialize_thread(struct thread *td, void *thunk)
{
 struct thread_create_args *args = thunk;


 args->tid = td->td_tid;


 return (cloudabi32_thread_setregs(td, &args->attr, args->tcb));
}
