
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_spsr; int tf_pc; int tf_usr_lr; int tf_usr_sp; int tf_r0; } ;
struct thread {struct trapframe* td_frame; } ;
struct reg {int r_cpsr; int r_pc; int r_lr; int r_sp; int r; } ;


 int PSR_FLAGS ;
 int bcopy (int ,int *,int) ;

int
set_regs(struct thread *td, struct reg *regs)
{
 struct trapframe *tf = td->td_frame;

 bcopy(regs->r, &tf->tf_r0, sizeof(regs->r));
 tf->tf_usr_sp = regs->r_sp;
 tf->tf_usr_lr = regs->r_lr;
 tf->tf_pc = regs->r_pc;
 tf->tf_spsr &= ~PSR_FLAGS;
 tf->tf_spsr |= regs->r_cpsr & PSR_FLAGS;
 return (0);
}
