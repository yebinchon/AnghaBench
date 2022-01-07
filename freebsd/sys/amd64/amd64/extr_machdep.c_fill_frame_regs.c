
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_flags; scalar_t__ tf_gs; scalar_t__ tf_fs; scalar_t__ tf_es; scalar_t__ tf_ds; int tf_ss; int tf_rsp; int tf_rflags; int tf_cs; int tf_rip; int tf_rax; int tf_rcx; int tf_rdx; int tf_rbx; int tf_rbp; int tf_rsi; int tf_rdi; int tf_r8; int tf_r9; int tf_r10; int tf_r11; int tf_r12; int tf_r13; int tf_r14; int tf_r15; } ;
struct reg {scalar_t__ r_trapno; scalar_t__ r_err; scalar_t__ r_gs; scalar_t__ r_fs; scalar_t__ r_es; scalar_t__ r_ds; int r_ss; int r_rsp; int r_rflags; int r_cs; int r_rip; int r_rax; int r_rcx; int r_rdx; int r_rbx; int r_rbp; int r_rsi; int r_rdi; int r_r8; int r_r9; int r_r10; int r_r11; int r_r12; int r_r13; int r_r14; int r_r15; } ;


 int TF_HASSEGS ;

int
fill_frame_regs(struct trapframe *tp, struct reg *regs)
{

 regs->r_r15 = tp->tf_r15;
 regs->r_r14 = tp->tf_r14;
 regs->r_r13 = tp->tf_r13;
 regs->r_r12 = tp->tf_r12;
 regs->r_r11 = tp->tf_r11;
 regs->r_r10 = tp->tf_r10;
 regs->r_r9 = tp->tf_r9;
 regs->r_r8 = tp->tf_r8;
 regs->r_rdi = tp->tf_rdi;
 regs->r_rsi = tp->tf_rsi;
 regs->r_rbp = tp->tf_rbp;
 regs->r_rbx = tp->tf_rbx;
 regs->r_rdx = tp->tf_rdx;
 regs->r_rcx = tp->tf_rcx;
 regs->r_rax = tp->tf_rax;
 regs->r_rip = tp->tf_rip;
 regs->r_cs = tp->tf_cs;
 regs->r_rflags = tp->tf_rflags;
 regs->r_rsp = tp->tf_rsp;
 regs->r_ss = tp->tf_ss;
 if (tp->tf_flags & TF_HASSEGS) {
  regs->r_ds = tp->tf_ds;
  regs->r_es = tp->tf_es;
  regs->r_fs = tp->tf_fs;
  regs->r_gs = tp->tf_gs;
 } else {
  regs->r_ds = 0;
  regs->r_es = 0;
  regs->r_fs = 0;
  regs->r_gs = 0;
 }
 regs->r_err = 0;
 regs->r_trapno = 0;
 return (0);
}
