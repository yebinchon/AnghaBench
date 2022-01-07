
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_ss; int tf_rsp; int tf_rflags; int tf_cs; int tf_rip; int tf_rax; int tf_rcx; int tf_rdx; int tf_rbx; int tf_rbp; int tf_rsi; int tf_rdi; int tf_flags; int tf_ds; int tf_es; int tf_fs; int tf_gs; } ;
struct thread {int td_pcb; struct trapframe* td_frame; } ;
struct reg32 {int r_ss; int r_esp; int r_eflags; int r_cs; int r_eip; int r_eax; int r_ecx; int r_edx; int r_ebx; int r_ebp; int r_esi; int r_edi; int r_ds; int r_es; int r_fs; int r_gs; } ;


 int CS_SECURE (int ) ;
 int EFL_SECURE (int ,int ) ;
 int EINVAL ;
 int PCB_FULL_IRET ;
 int TF_HASSEGS ;
 int set_pcb_flags (int ,int ) ;

int
set_regs32(struct thread *td, struct reg32 *regs)
{
 struct trapframe *tp;

 tp = td->td_frame;
 if (!EFL_SECURE(regs->r_eflags, tp->tf_rflags) || !CS_SECURE(regs->r_cs))
  return (EINVAL);
 tp->tf_gs = regs->r_gs;
 tp->tf_fs = regs->r_fs;
 tp->tf_es = regs->r_es;
 tp->tf_ds = regs->r_ds;
 set_pcb_flags(td->td_pcb, PCB_FULL_IRET);
 tp->tf_flags = TF_HASSEGS;
 tp->tf_rdi = regs->r_edi;
 tp->tf_rsi = regs->r_esi;
 tp->tf_rbp = regs->r_ebp;
 tp->tf_rbx = regs->r_ebx;
 tp->tf_rdx = regs->r_edx;
 tp->tf_rcx = regs->r_ecx;
 tp->tf_rax = regs->r_eax;
 tp->tf_rip = regs->r_eip;
 tp->tf_cs = regs->r_cs;
 tp->tf_rflags = regs->r_eflags;
 tp->tf_rsp = regs->r_esp;
 tp->tf_ss = regs->r_ss;
 return (0);
}
