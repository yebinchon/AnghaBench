
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct trapframe {int tf_lr; int tf_elr; int tf_sp; } ;
struct thread {struct trapframe* td_frame; } ;
struct image_params {int entry_addr; } ;


 int LIN_SDT_PROBE0 (int ,void (*) (struct thread*,struct image_params*,int ),int ) ;
 int memset (struct trapframe*,int ,int) ;
 int sysvec ;
 int todo ;

__attribute__((used)) static void
linux_exec_setregs(struct thread *td, struct image_params *imgp, u_long stack)
{
 struct trapframe *regs = td->td_frame;


 LIN_SDT_PROBE0(sysvec, linux_exec_setregs, todo);

 memset(regs, 0, sizeof(*regs));

        regs->tf_sp = stack;



        regs->tf_lr = 0xffffffffffffffff;

        regs->tf_elr = imgp->entry_addr;
}
