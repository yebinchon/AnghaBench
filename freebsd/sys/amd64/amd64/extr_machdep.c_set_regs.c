
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_rflags; int tf_flags; int tf_gs; int tf_fs; int tf_es; int tf_ds; int tf_ss; int tf_rsp; int tf_cs; int tf_rip; int tf_rax; int tf_rcx; int tf_rdx; int tf_rbx; int tf_rbp; int tf_rsi; int tf_rdi; int tf_r8; int tf_r9; int tf_r10; int tf_r11; int tf_r12; int tf_r13; int tf_r14; int tf_r15; } ;
struct thread {int td_pcb; struct trapframe* td_frame; } ;
struct reg {int r_rflags; int r_gs; int r_fs; int r_es; int r_ds; int r_ss; int r_rsp; int r_cs; int r_rip; int r_rax; int r_rcx; int r_rdx; int r_rbx; int r_rbp; int r_rsi; int r_rdi; int r_r8; int r_r9; int r_r10; int r_r11; int r_r12; int r_r13; int r_r14; int r_r15; } ;
typedef int register_t ;


 int CS_SECURE (int ) ;
 int EFL_SECURE (int,int) ;
 int EINVAL ;
 int PCB_FULL_IRET ;
 int TF_HASSEGS ;
 int set_pcb_flags (int ,int ) ;

int
set_regs(struct thread *td, struct reg *regs)
{
 struct trapframe *tp;
 register_t rflags;

 tp = td->td_frame;
 rflags = regs->r_rflags & 0xffffffff;
 if (!EFL_SECURE(rflags, tp->tf_rflags) || !CS_SECURE(regs->r_cs))
  return (EINVAL);
 tp->tf_r15 = regs->r_r15;
 tp->tf_r14 = regs->r_r14;
 tp->tf_r13 = regs->r_r13;
 tp->tf_r12 = regs->r_r12;
 tp->tf_r11 = regs->r_r11;
 tp->tf_r10 = regs->r_r10;
 tp->tf_r9 = regs->r_r9;
 tp->tf_r8 = regs->r_r8;
 tp->tf_rdi = regs->r_rdi;
 tp->tf_rsi = regs->r_rsi;
 tp->tf_rbp = regs->r_rbp;
 tp->tf_rbx = regs->r_rbx;
 tp->tf_rdx = regs->r_rdx;
 tp->tf_rcx = regs->r_rcx;
 tp->tf_rax = regs->r_rax;
 tp->tf_rip = regs->r_rip;
 tp->tf_cs = regs->r_cs;
 tp->tf_rflags = rflags;
 tp->tf_rsp = regs->r_rsp;
 tp->tf_ss = regs->r_ss;
 if (0) {
  tp->tf_ds = regs->r_ds;
  tp->tf_es = regs->r_es;
  tp->tf_fs = regs->r_fs;
  tp->tf_gs = regs->r_gs;
  tp->tf_flags = TF_HASSEGS;
 }
 set_pcb_flags(td->td_pcb, PCB_FULL_IRET);
 return (0);
}
