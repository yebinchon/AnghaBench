
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int* td_retval; } ;
typedef int pid_t ;
typedef int l_int ;


 int PT_READ_I ;
 int copyout (int*,void*,int) ;
 int kern_ptrace (struct thread*,int ,int ,void*,int ) ;

__attribute__((used)) static int
linux_ptrace_peek(struct thread *td, pid_t pid, void *addr, void *data)
{
 int error;

 error = kern_ptrace(td, PT_READ_I, pid, addr, 0);
 if (error == 0)
  error = copyout(td->td_retval, data, sizeof(l_int));
 td->td_retval[0] = error;

 return (error);
}
