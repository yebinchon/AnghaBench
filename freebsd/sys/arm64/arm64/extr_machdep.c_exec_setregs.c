
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct trapframe {int tf_elr; int tf_lr; int tf_sp; int * tf_x; } ;
struct thread {struct trapframe* td_frame; } ;
struct image_params {int entry_addr; } ;


 int STACKALIGN (int ) ;
 int memset (struct trapframe*,int ,int) ;

void
exec_setregs(struct thread *td, struct image_params *imgp, u_long stack)
{
 struct trapframe *tf = td->td_frame;

 memset(tf, 0, sizeof(struct trapframe));

 tf->tf_x[0] = stack;
 tf->tf_sp = STACKALIGN(stack);
 tf->tf_lr = imgp->entry_addr;
 tf->tf_elr = imgp->entry_addr;
}
