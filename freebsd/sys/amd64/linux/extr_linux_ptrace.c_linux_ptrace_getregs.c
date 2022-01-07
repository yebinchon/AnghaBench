
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct reg {int pl_flags; } ;
struct ptrace_lwpinfo {int pl_flags; } ;
struct linux_pt_reg {int rax; int rcx; int r10; } ;
typedef int pid_t ;
typedef int lwpinfo ;
typedef int l_reg ;


 int PL_FLAG_SCE ;
 int PT_GETREGS ;
 int PT_LWPINFO ;
 int copyout (struct linux_pt_reg*,void*,int) ;
 int kern_ptrace (struct thread*,int ,int ,struct reg*,int) ;
 int linux_msg (struct thread*,char*,int) ;
 int map_regs_to_linux (struct reg*,struct linux_pt_reg*) ;

__attribute__((used)) static int
linux_ptrace_getregs(struct thread *td, pid_t pid, void *data)
{
 struct ptrace_lwpinfo lwpinfo;
 struct reg b_reg;
 struct linux_pt_reg l_reg;
 int error;

 error = kern_ptrace(td, PT_GETREGS, pid, &b_reg, 0);
 if (error != 0)
  return (error);

 map_regs_to_linux(&b_reg, &l_reg);

 error = kern_ptrace(td, PT_LWPINFO, pid, &lwpinfo, sizeof(lwpinfo));
 if (error != 0) {
  linux_msg(td, "PT_LWPINFO failed with error %d", error);
  return (error);
 }
 if (lwpinfo.pl_flags & PL_FLAG_SCE) {







  l_reg.rax = -38;




  l_reg.r10 = l_reg.rcx;
 }

 error = copyout(&l_reg, (void *)data, sizeof(l_reg));
 return (error);
}
