
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct trapframe {int tf_rflags; int tf_rbx; int tf_cs; int tf_flags; void* tf_ss; void* tf_ds; void* tf_es; int tf_fs; int tf_gs; int tf_rsp; int tf_rip; } ;
struct thread {TYPE_2__* td_proc; struct pcb* td_pcb; struct trapframe* td_frame; } ;
struct pcb {int pcb_initial_fpucw; scalar_t__ pcb_gsbase; scalar_t__ pcb_fsbase; } ;
struct image_params {int ps_strings; int entry_addr; } ;
typedef int register_t ;
struct TYPE_3__ {int * md_ldt; } ;
struct TYPE_4__ {TYPE_1__ p_md; } ;


 int MSR_FSBASE ;
 int MSR_KGSBASE ;
 int PCB_32BIT ;
 int PCB_FULL_IRET ;
 int PSL_T ;
 int PSL_USER ;
 int TF_HASSEGS ;
 int __LINUX_NPXCW__ ;
 int _ucode32sel ;
 void* _udatasel ;
 int _ufssel ;
 int _ugssel ;
 int bzero (char*,int) ;
 int critical_enter () ;
 int critical_exit () ;
 int fpstate_drop (struct thread*) ;
 int set_pcb_flags (struct pcb*,int) ;
 int user_ldt_free (struct thread*) ;
 int wrmsr (int ,int ) ;

__attribute__((used)) static void
linux_exec_setregs(struct thread *td, struct image_params *imgp, u_long stack)
{
 struct trapframe *regs = td->td_frame;
 struct pcb *pcb = td->td_pcb;
 register_t saved_rflags;

 regs = td->td_frame;
 pcb = td->td_pcb;

 if (td->td_proc->p_md.md_ldt != ((void*)0))
  user_ldt_free(td);

 critical_enter();
 wrmsr(MSR_FSBASE, 0);
 wrmsr(MSR_KGSBASE, 0);
 pcb->pcb_fsbase = 0;
 pcb->pcb_gsbase = 0;
 critical_exit();
 pcb->pcb_initial_fpucw = __LINUX_NPXCW__;

 saved_rflags = regs->tf_rflags & PSL_T;
 bzero((char *)regs, sizeof(struct trapframe));
 regs->tf_rip = imgp->entry_addr;
 regs->tf_rsp = stack;
 regs->tf_rflags = PSL_USER | saved_rflags;
 regs->tf_gs = _ugssel;
 regs->tf_fs = _ufssel;
 regs->tf_es = _udatasel;
 regs->tf_ds = _udatasel;
 regs->tf_ss = _udatasel;
 regs->tf_flags = TF_HASSEGS;
 regs->tf_cs = _ucode32sel;
 regs->tf_rbx = imgp->ps_strings;

 fpstate_drop(td);


 set_pcb_flags(pcb, PCB_32BIT | PCB_FULL_IRET);
}
