
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct pcb* td_pcb; } ;
struct reg {int pl_flags; } ;
struct ptrace_lwpinfo {int pl_flags; } ;
struct pcb {unsigned long pcb_fsbase; unsigned long pcb_gsbase; } ;
struct linux_pt_regset {int rax; size_t iov_len; scalar_t__ iov_base; int rcx; int r10; } ;
struct iovec {int rax; size_t iov_len; scalar_t__ iov_base; int rcx; int r10; } ;
typedef int pid_t ;
typedef int lwpinfo ;
typedef scalar_t__ l_ulong ;
typedef int l_regset ;
typedef int iov ;


 size_t MIN (size_t,int) ;
 int PL_FLAG_SCE ;
 int PT_GETREGS ;
 int PT_LWPINFO ;
 int copyin (void const*,struct linux_pt_regset*,int) ;
 int copyout (struct linux_pt_regset*,void*,int) ;
 struct thread* curthread ;
 int kern_ptrace (struct thread*,int ,int ,struct reg*,int) ;
 int linux_msg (struct thread*,char*,int) ;
 int map_regs_to_linux_regset (struct reg*,unsigned long,unsigned long,struct linux_pt_regset*) ;
 int update_pcb_bases (struct pcb*) ;

__attribute__((used)) static int
linux_ptrace_getregset_prstatus(struct thread *td, pid_t pid, l_ulong data)
{
 struct ptrace_lwpinfo lwpinfo;
 struct reg b_reg;
 struct linux_pt_regset l_regset;
 struct iovec iov;
 struct pcb *pcb;
 unsigned long fsbase, gsbase;
 size_t len;
 int error;

 error = copyin((const void *)data, &iov, sizeof(iov));
 if (error != 0) {
  linux_msg(td, "copyin error %d", error);
  return (error);
 }

 error = kern_ptrace(td, PT_GETREGS, pid, &b_reg, 0);
 if (error != 0)
  return (error);

 pcb = td->td_pcb;
 if (td == curthread)
  update_pcb_bases(pcb);
 fsbase = pcb->pcb_fsbase;
 gsbase = pcb->pcb_gsbase;

 map_regs_to_linux_regset(&b_reg, fsbase, gsbase, &l_regset);

 error = kern_ptrace(td, PT_LWPINFO, pid, &lwpinfo, sizeof(lwpinfo));
 if (error != 0) {
  linux_msg(td, "PT_LWPINFO failed with error %d", error);
  return (error);
 }
 if (lwpinfo.pl_flags & PL_FLAG_SCE) {







  l_regset.rax = -38;




  l_regset.r10 = l_regset.rcx;
 }

 len = MIN(iov.iov_len, sizeof(l_regset));
 error = copyout(&l_regset, (void *)iov.iov_base, len);
 if (error != 0) {
  linux_msg(td, "copyout error %d", error);
  return (error);
 }

 iov.iov_len -= len;
 error = copyout(&iov, (void *)data, sizeof(iov));
 if (error != 0) {
  linux_msg(td, "iov copyout error %d", error);
  return (error);
 }

 return (error);
}
