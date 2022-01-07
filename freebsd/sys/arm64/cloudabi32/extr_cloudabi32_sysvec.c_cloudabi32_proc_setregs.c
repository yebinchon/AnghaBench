
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_spsr; int tf_elr; scalar_t__* tf_x; } ;
struct thread {struct trapframe* td_frame; } ;
struct image_params {int entry_addr; } ;
typedef int register_t ;
typedef int cloudabi32_tcb_t ;


 int PSR_AARCH32 ;
 scalar_t__ STACKALIGN (unsigned long) ;
 int TO_PTR (unsigned long) ;
 int cpu_set_user_tls (struct thread*,int ) ;
 int memset (struct trapframe*,int ,int) ;
 scalar_t__ roundup (int,int) ;

__attribute__((used)) static void
cloudabi32_proc_setregs(struct thread *td, struct image_params *imgp,
    unsigned long stack)
{
 struct trapframe *regs;

 regs = td->td_frame;
 memset(regs, 0, sizeof(*regs));
 regs->tf_x[0] =
     stack + roundup(sizeof(cloudabi32_tcb_t), sizeof(register_t));
 regs->tf_x[13] = STACKALIGN(stack);
 regs->tf_elr = imgp->entry_addr;
 regs->tf_spsr |= PSR_AARCH32;
 (void)cpu_set_user_tls(td, TO_PTR(stack));
}
