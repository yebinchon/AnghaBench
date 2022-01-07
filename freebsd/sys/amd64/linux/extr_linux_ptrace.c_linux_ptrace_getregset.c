
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
typedef int pid_t ;
typedef int l_ulong ;


 int EINVAL ;

 int linux_msg (struct thread*,char*,int) ;
 int linux_ptrace_getregset_prstatus (struct thread*,int ,int) ;

__attribute__((used)) static int
linux_ptrace_getregset(struct thread *td, pid_t pid, l_ulong addr, l_ulong data)
{

 switch (addr) {
 case 128:
  return (linux_ptrace_getregset_prstatus(td, pid, data));
 default:
  linux_msg(td, "PTRACE_GETREGSET request %ld not implemented; "
      "returning EINVAL", addr);
  return (EINVAL);
 }
}
