
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_spsr; int tf_elr; int tf_x; int tf_lr; int tf_sp; } ;
struct thread {int td_proc; struct trapframe* td_frame; } ;
struct reg {int * x; int spsr; int elr; int lr; int sp; } ;


 int SV_ILP32 ;
 scalar_t__ SV_PROC_FLAG (int ,int ) ;
 int memcpy (int *,int ,int) ;

int
fill_regs(struct thread *td, struct reg *regs)
{
 struct trapframe *frame;

 frame = td->td_frame;
 regs->sp = frame->tf_sp;
 regs->lr = frame->tf_lr;
 regs->elr = frame->tf_elr;
 regs->spsr = frame->tf_spsr;

 memcpy(regs->x, frame->tf_x, sizeof(regs->x));
 return (0);
}
