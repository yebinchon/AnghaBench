
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct trapframe {int tf_svc_lr; int tf_spsr; int tf_pc; int tf_usr_lr; int tf_usr_sp; } ;
struct thread {struct trapframe* td_frame; } ;
struct image_params {int entry_addr; } ;


 int PSR_USR32_MODE ;
 int memset (struct trapframe*,int ,int) ;

void
exec_setregs(struct thread *td, struct image_params *imgp, u_long stack)
{
 struct trapframe *tf = td->td_frame;

 memset(tf, 0, sizeof(*tf));
 tf->tf_usr_sp = stack;
 tf->tf_usr_lr = imgp->entry_addr;
 tf->tf_svc_lr = 0x77777777;
 tf->tf_pc = imgp->entry_addr;
 tf->tf_spsr = PSR_USR32_MODE;
}
