
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct trapframe {int tf_rflags; int tf_rsp; int tf_rdi; int tf_flags; int tf_gs; int tf_fs; void* tf_es; void* tf_ds; int tf_cs; void* tf_ss; int tf_rip; } ;
struct thread {TYPE_2__* td_proc; struct pcb* td_pcb; struct trapframe* td_frame; } ;
struct pcb {int pcb_flags; scalar_t__ pcb_dr7; scalar_t__ pcb_dr6; scalar_t__ pcb_dr3; scalar_t__ pcb_dr2; scalar_t__ pcb_dr1; scalar_t__ pcb_dr0; int pcb_initial_fpucw; scalar_t__ pcb_gsbase; scalar_t__ pcb_fsbase; } ;
struct image_params {int entry_addr; } ;
typedef int register_t ;
struct TYPE_3__ {int * md_ldt; } ;
struct TYPE_4__ {TYPE_1__ p_md; } ;


 int PCB_32BIT ;
 int PCB_DBREGS ;
 int PSL_T ;
 int PSL_USER ;
 int TF_HASSEGS ;
 int __INITIAL_FPUCW__ ;
 int _ucodesel ;
 void* _udatasel ;
 int _ufssel ;
 int _ugssel ;
 int bzero (char*,int) ;
 int clear_pcb_flags (struct pcb*,int) ;
 struct pcb* curpcb ;
 int fpstate_drop (struct thread*) ;
 int reset_dbregs () ;
 int update_pcb_bases (struct pcb*) ;
 int user_ldt_free (struct thread*) ;

void
exec_setregs(struct thread *td, struct image_params *imgp, u_long stack)
{
 struct trapframe *regs;
 struct pcb *pcb;
 register_t saved_rflags;

 regs = td->td_frame;
 pcb = td->td_pcb;

 if (td->td_proc->p_md.md_ldt != ((void*)0))
  user_ldt_free(td);

 update_pcb_bases(pcb);
 pcb->pcb_fsbase = 0;
 pcb->pcb_gsbase = 0;
 clear_pcb_flags(pcb, PCB_32BIT);
 pcb->pcb_initial_fpucw = __INITIAL_FPUCW__;

 saved_rflags = regs->tf_rflags & PSL_T;
 bzero((char *)regs, sizeof(struct trapframe));
 regs->tf_rip = imgp->entry_addr;
 regs->tf_rsp = ((stack - 8) & ~0xFul) + 8;
 regs->tf_rdi = stack;
 regs->tf_rflags = PSL_USER | saved_rflags;
 regs->tf_ss = _udatasel;
 regs->tf_cs = _ucodesel;
 regs->tf_ds = _udatasel;
 regs->tf_es = _udatasel;
 regs->tf_fs = _ufssel;
 regs->tf_gs = _ugssel;
 regs->tf_flags = TF_HASSEGS;





 if (pcb->pcb_flags & PCB_DBREGS) {
  pcb->pcb_dr0 = 0;
  pcb->pcb_dr1 = 0;
  pcb->pcb_dr2 = 0;
  pcb->pcb_dr3 = 0;
  pcb->pcb_dr6 = 0;
  pcb->pcb_dr7 = 0;
  if (pcb == curpcb) {





   reset_dbregs();
  }
  clear_pcb_flags(pcb, PCB_DBREGS);
 }





 fpstate_drop(td);
}
