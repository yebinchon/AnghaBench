
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {struct pcb* td_pcb; } ;
struct TYPE_2__ {int vfp_fpsr; int vfp_fpcr; int vfp_regs; } ;
struct pcb {TYPE_1__ pcb_fpustate; TYPE_1__* pcb_fpusaved; } ;
struct fpreg {int fp_sr; int fp_cr; int fp_q; } ;


 int KASSERT (int,char*) ;
 int memcpy (int ,int ,int) ;

int
set_fpregs(struct thread *td, struct fpreg *regs)
{
 return (0);
}
