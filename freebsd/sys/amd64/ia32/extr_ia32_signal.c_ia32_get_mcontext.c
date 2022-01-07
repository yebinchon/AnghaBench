
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {int tf_flags; int tf_ss; int tf_rsp; int tf_cs; int tf_rip; int tf_rcx; int tf_rbx; int tf_rdx; int tf_rax; int tf_rflags; int tf_rbp; int tf_rsi; int tf_rdi; int tf_ds; int tf_es; int tf_fs; int tf_gs; } ;
struct thread {struct trapframe* td_frame; struct pcb* td_pcb; } ;
struct pcb {int pcb_gsbase; int pcb_fsbase; } ;
struct ia32_mcontext {int mc_len; int mc_spare2; scalar_t__ mc_xfpustate_len; scalar_t__ mc_xfpustate; int mc_gsbase; int mc_fsbase; int mc_flags; int mc_ss; int mc_esp; int mc_cs; int mc_eip; int mc_ecx; int mc_ebx; int mc_edx; int mc_eax; int mc_eflags; int mc_isp; int mc_ebp; int mc_esi; int mc_edi; int mc_ds; int mc_es; int mc_fs; int mc_gs; int mc_onstack; } ;
struct TYPE_2__ {int td_proc; } ;


 int GET_MC_CLEAR_RET ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int PSL_C ;
 int bzero (int ,int) ;
 TYPE_1__* curthread ;
 int ia32_get_fpcontext (struct thread*,struct ia32_mcontext*,int *,int ) ;
 int sigonstack (int ) ;

__attribute__((used)) static int
ia32_get_mcontext(struct thread *td, struct ia32_mcontext *mcp, int flags)
{
 struct pcb *pcb;
 struct trapframe *tp;

 pcb = td->td_pcb;
 tp = td->td_frame;

 PROC_LOCK(curthread->td_proc);
 mcp->mc_onstack = sigonstack(tp->tf_rsp);
 PROC_UNLOCK(curthread->td_proc);

 mcp->mc_gs = tp->tf_gs;
 mcp->mc_fs = tp->tf_fs;
 mcp->mc_es = tp->tf_es;
 mcp->mc_ds = tp->tf_ds;
 mcp->mc_edi = tp->tf_rdi;
 mcp->mc_esi = tp->tf_rsi;
 mcp->mc_ebp = tp->tf_rbp;
 mcp->mc_isp = tp->tf_rsp;
 mcp->mc_eflags = tp->tf_rflags;
 if (flags & GET_MC_CLEAR_RET) {
  mcp->mc_eax = 0;
  mcp->mc_edx = 0;
  mcp->mc_eflags &= ~PSL_C;
 } else {
  mcp->mc_eax = tp->tf_rax;
  mcp->mc_edx = tp->tf_rdx;
 }
 mcp->mc_ebx = tp->tf_rbx;
 mcp->mc_ecx = tp->tf_rcx;
 mcp->mc_eip = tp->tf_rip;
 mcp->mc_cs = tp->tf_cs;
 mcp->mc_esp = tp->tf_rsp;
 mcp->mc_ss = tp->tf_ss;
 mcp->mc_len = sizeof(*mcp);
 mcp->mc_flags = tp->tf_flags;
 ia32_get_fpcontext(td, mcp, ((void*)0), 0);
 mcp->mc_fsbase = pcb->pcb_fsbase;
 mcp->mc_gsbase = pcb->pcb_gsbase;
 mcp->mc_xfpustate = 0;
 mcp->mc_xfpustate_len = 0;
 bzero(mcp->mc_spare2, sizeof(mcp->mc_spare2));
 return (0);
}
