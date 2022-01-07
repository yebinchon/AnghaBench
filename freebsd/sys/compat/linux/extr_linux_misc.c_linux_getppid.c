
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int * td_retval; } ;
struct linux_getppid_args {int dummy; } ;


 int kern_getppid (struct thread*) ;

int
linux_getppid(struct thread *td, struct linux_getppid_args *args)
{

 td->td_retval[0] = kern_getppid(td);
 return (0);
}
