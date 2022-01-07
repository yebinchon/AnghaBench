
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int cpu_set_syscall_retval (struct thread*,int) ;

void
ia32_set_syscall_retval(struct thread *td, int error)
{

 cpu_set_syscall_retval(td, error);
}
