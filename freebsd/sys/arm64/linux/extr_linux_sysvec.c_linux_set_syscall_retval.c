
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_frame; int * td_retval; } ;
struct TYPE_2__ {int * tf_x; } ;


 int cpu_set_syscall_retval (struct thread*,int) ;

__attribute__((used)) static void
linux_set_syscall_retval(struct thread *td, int error)
{

 td->td_retval[1] = td->td_frame->tf_x[1];
 cpu_set_syscall_retval(td, error);
}
