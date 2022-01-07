
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_elr; int tf_spsr; int tf_x; int tf_lr; int tf_sp; } ;
struct thread {int td_proc; struct trapframe* td_frame; } ;
struct reg {int elr; int spsr; int* x; int lr; int sp; } ;


 int PSR_FLAGS ;
 int SV_ILP32 ;
 scalar_t__ SV_PROC_FLAG (int ,int ) ;
 int memcpy (int ,int*,int) ;

int
set_regs(struct thread *td, struct reg *regs)
{
 struct trapframe *frame;

 frame = td->td_frame;
 frame->tf_sp = regs->sp;
 frame->tf_lr = regs->lr;
 frame->tf_elr = regs->elr;
 frame->tf_spsr &= ~PSR_FLAGS;
 frame->tf_spsr |= regs->spsr & PSR_FLAGS;

 memcpy(frame->tf_x, regs->x, sizeof(frame->tf_x));
 return (0);
}
