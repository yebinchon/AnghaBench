
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct trapframe {int tf_pc; int tf_r0; int tf_spsr; int tf_usr_sp; } ;
struct thread {struct trapframe* td_frame; } ;
struct TYPE_3__ {scalar_t__ ss_size; scalar_t__ ss_sp; } ;
typedef TYPE_1__ stack_t ;


 int PSR_USR32_MODE ;
 int STACKALIGN (scalar_t__) ;

void
cpu_set_upcall(struct thread *td, void (*entry)(void *), void *arg,
 stack_t *stack)
{
 struct trapframe *tf = td->td_frame;

 tf->tf_usr_sp = STACKALIGN((int)stack->ss_sp + stack->ss_size);
 tf->tf_pc = (int)entry;
 tf->tf_r0 = (int)arg;
 tf->tf_spsr = PSR_USR32_MODE;
}
