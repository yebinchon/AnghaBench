
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_flags; int tf_ss; int tf_rsp; int tf_rflags; int tf_cs; int tf_rip; int tf_rax; int tf_rcx; int tf_rdx; int tf_rbx; int tf_rbp; int tf_rsi; int tf_rdi; void* tf_ds; void* tf_es; int tf_fs; int tf_gs; } ;
struct thread {struct trapframe* td_frame; } ;
struct reg32 {scalar_t__ r_trapno; scalar_t__ r_err; int r_ss; int r_esp; int r_eflags; int r_cs; int r_eip; int r_eax; int r_ecx; int r_edx; int r_ebx; int r_ebp; int r_esi; int r_edi; void* r_ds; void* r_es; int r_fs; int r_gs; } ;


 int TF_HASSEGS ;
 void* _udatasel ;
 int _ufssel ;
 int _ugssel ;

int
fill_regs32(struct thread *td, struct reg32 *regs)
{
 struct trapframe *tp;

 tp = td->td_frame;
 if (tp->tf_flags & TF_HASSEGS) {
  regs->r_gs = tp->tf_gs;
  regs->r_fs = tp->tf_fs;
  regs->r_es = tp->tf_es;
  regs->r_ds = tp->tf_ds;
 } else {
  regs->r_gs = _ugssel;
  regs->r_fs = _ufssel;
  regs->r_es = _udatasel;
  regs->r_ds = _udatasel;
 }
 regs->r_edi = tp->tf_rdi;
 regs->r_esi = tp->tf_rsi;
 regs->r_ebp = tp->tf_rbp;
 regs->r_ebx = tp->tf_rbx;
 regs->r_edx = tp->tf_rdx;
 regs->r_ecx = tp->tf_rcx;
 regs->r_eax = tp->tf_rax;
 regs->r_eip = tp->tf_rip;
 regs->r_cs = tp->tf_cs;
 regs->r_eflags = tp->tf_rflags;
 regs->r_esp = tp->tf_rsp;
 regs->r_ss = tp->tf_ss;
 regs->r_err = 0;
 regs->r_trapno = 0;
 return (0);
}
