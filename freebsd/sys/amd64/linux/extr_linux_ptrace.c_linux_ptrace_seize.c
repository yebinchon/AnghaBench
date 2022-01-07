
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
typedef int pid_t ;
typedef int l_ulong ;


 int EINVAL ;
 int linux_msg (struct thread*,char*) ;

__attribute__((used)) static int
linux_ptrace_seize(struct thread *td, pid_t pid, l_ulong addr, l_ulong data)
{

 linux_msg(td, "PTRACE_SEIZE not implemented; returning EINVAL");
 return (EINVAL);
}
