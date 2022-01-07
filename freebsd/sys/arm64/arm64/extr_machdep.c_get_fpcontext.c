
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_6__ {int vfp_fpsr; int vfp_fpcr; int vfp_regs; } ;
struct pcb {int pcb_fpflags; TYPE_1__ pcb_fpustate; TYPE_1__* pcb_fpusaved; } ;
struct TYPE_7__ {int fp_flags; int fp_sr; int fp_cr; int fp_q; } ;
struct TYPE_8__ {int mc_flags; TYPE_2__ mc_fpregs; } ;
typedef TYPE_3__ mcontext_t ;
struct TYPE_9__ {struct pcb* td_pcb; } ;


 int KASSERT (int,char*) ;
 int PCB_FP_STARTED ;
 int PCB_FP_USERMASK ;
 int _MC_FP_VALID ;
 int critical_enter () ;
 int critical_exit () ;
 TYPE_5__* curthread ;
 int memcpy (int ,int ,int) ;
 int vfp_save_state (struct thread*,struct pcb*) ;

__attribute__((used)) static void
get_fpcontext(struct thread *td, mcontext_t *mcp)
{
}
