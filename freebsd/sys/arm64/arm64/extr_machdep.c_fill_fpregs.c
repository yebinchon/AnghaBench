
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {struct pcb* td_pcb; } ;
struct TYPE_2__ {int vfp_fpsr; int vfp_fpcr; int vfp_regs; } ;
struct pcb {int pcb_fpflags; TYPE_1__ pcb_fpustate; TYPE_1__* pcb_fpusaved; } ;
struct fpreg {int fp_sr; int fp_cr; int fp_q; } ;


 int KASSERT (int,char*) ;
 int PCB_FP_STARTED ;
 struct thread* curthread ;
 int memcpy (int ,int ,int) ;
 int memset (struct fpreg*,int ,int) ;
 int vfp_save_state (struct thread*,struct pcb*) ;

int
fill_fpregs(struct thread *td, struct fpreg *regs)
{
  memset(regs, 0, sizeof(*regs));
 return (0);
}
