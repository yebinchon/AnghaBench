
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct trapframe {int tf_flags; int tf_gs; int tf_fs; int tf_es; int tf_ds; int tf_ss; int tf_rsp; int tf_cs; int tf_rip; int tf_rdx; int tf_rax; int tf_rflags; int tf_rcx; int tf_rbx; int tf_rbp; int tf_rsi; int tf_rdi; int tf_r8; int tf_r9; int tf_r10; int tf_r11; int tf_r12; int tf_r13; int tf_r14; int tf_r15; } ;
struct thread {struct trapframe* td_frame; struct pcb* td_pcb; } ;
struct pcb {int pcb_gsbase; int pcb_fsbase; } ;
struct TYPE_5__ {int mc_len; int mc_spare; scalar_t__ mc_xfpustate_len; scalar_t__ mc_xfpustate; int mc_gsbase; int mc_fsbase; int mc_flags; int mc_gs; int mc_fs; int mc_es; int mc_ds; int mc_ss; int mc_rsp; int mc_cs; int mc_rip; int mc_rdx; int mc_rax; int mc_rflags; int mc_rcx; int mc_rbx; int mc_rbp; int mc_rsi; int mc_rdi; int mc_r8; int mc_r9; int mc_r10; int mc_r11; int mc_r12; int mc_r13; int mc_r14; int mc_r15; int mc_onstack; } ;
typedef TYPE_1__ mcontext_t ;
struct TYPE_6__ {int td_proc; } ;


 int GET_MC_CLEAR_RET ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int PSL_C ;
 int bzero (int ,int) ;
 TYPE_4__* curthread ;
 int get_fpcontext (struct thread*,TYPE_1__*,int *,int ) ;
 int sigonstack (int ) ;
 int update_pcb_bases (struct pcb*) ;

int
get_mcontext(struct thread *td, mcontext_t *mcp, int flags)
{
 struct pcb *pcb;
 struct trapframe *tp;

 pcb = td->td_pcb;
 tp = td->td_frame;
 PROC_LOCK(curthread->td_proc);
 mcp->mc_onstack = sigonstack(tp->tf_rsp);
 PROC_UNLOCK(curthread->td_proc);
 mcp->mc_r15 = tp->tf_r15;
 mcp->mc_r14 = tp->tf_r14;
 mcp->mc_r13 = tp->tf_r13;
 mcp->mc_r12 = tp->tf_r12;
 mcp->mc_r11 = tp->tf_r11;
 mcp->mc_r10 = tp->tf_r10;
 mcp->mc_r9 = tp->tf_r9;
 mcp->mc_r8 = tp->tf_r8;
 mcp->mc_rdi = tp->tf_rdi;
 mcp->mc_rsi = tp->tf_rsi;
 mcp->mc_rbp = tp->tf_rbp;
 mcp->mc_rbx = tp->tf_rbx;
 mcp->mc_rcx = tp->tf_rcx;
 mcp->mc_rflags = tp->tf_rflags;
 if (flags & GET_MC_CLEAR_RET) {
  mcp->mc_rax = 0;
  mcp->mc_rdx = 0;
  mcp->mc_rflags &= ~PSL_C;
 } else {
  mcp->mc_rax = tp->tf_rax;
  mcp->mc_rdx = tp->tf_rdx;
 }
 mcp->mc_rip = tp->tf_rip;
 mcp->mc_cs = tp->tf_cs;
 mcp->mc_rsp = tp->tf_rsp;
 mcp->mc_ss = tp->tf_ss;
 mcp->mc_ds = tp->tf_ds;
 mcp->mc_es = tp->tf_es;
 mcp->mc_fs = tp->tf_fs;
 mcp->mc_gs = tp->tf_gs;
 mcp->mc_flags = tp->tf_flags;
 mcp->mc_len = sizeof(*mcp);
 get_fpcontext(td, mcp, ((void*)0), 0);
 update_pcb_bases(pcb);
 mcp->mc_fsbase = pcb->pcb_fsbase;
 mcp->mc_gsbase = pcb->pcb_gsbase;
 mcp->mc_xfpustate = 0;
 mcp->mc_xfpustate_len = 0;
 bzero(mcp->mc_spare, sizeof(mcp->mc_spare));
 return (0);
}
