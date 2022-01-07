
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {scalar_t__ tf_rdi; } ;
struct thread {struct trapframe* td_frame; } ;
struct image_params {int dummy; } ;
typedef int register_t ;
typedef int cloudabi64_tcb_t ;


 int TO_PTR (unsigned long) ;
 int cpu_set_user_tls (struct thread*,int ) ;
 int exec_setregs (struct thread*,struct image_params*,unsigned long) ;
 scalar_t__ roundup (int,int) ;

__attribute__((used)) static void
cloudabi64_proc_setregs(struct thread *td, struct image_params *imgp,
    unsigned long stack)
{
 struct trapframe *regs;

 exec_setregs(td, imgp, stack);






 regs = td->td_frame;
 regs->tf_rdi = stack + sizeof(register_t) +
     roundup(sizeof(cloudabi64_tcb_t), sizeof(register_t));
 (void)cpu_set_user_tls(td, TO_PTR(stack));
}
