
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; int * td_retval; } ;
struct linux_getpid_args {int dummy; } ;
struct TYPE_2__ {int p_pid; } ;



int
linux_getpid(struct thread *td, struct linux_getpid_args *args)
{

 td->td_retval[0] = td->td_proc->p_pid;

 return (0);
}
