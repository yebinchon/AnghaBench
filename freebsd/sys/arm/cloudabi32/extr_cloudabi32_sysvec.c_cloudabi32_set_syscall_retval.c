
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_pc; int tf_spsr; int tf_r0; int tf_r1; } ;
struct thread {int * td_retval; struct trapframe* td_frame; } ;




 int PSR_C ;
 int cloudabi_convert_errno (int) ;

__attribute__((used)) static void
cloudabi32_set_syscall_retval(struct thread *td, int error)
{
 struct trapframe *frame = td->td_frame;

 switch (error) {
 case 0:

  frame->tf_r0 = td->td_retval[0];
  frame->tf_r1 = td->td_retval[1];
  frame->tf_spsr &= ~PSR_C;
  break;
 case 128:

  frame->tf_pc -= 4;
  break;
 case 129:
  break;
 default:

  frame->tf_r0 = cloudabi_convert_errno(error);
  frame->tf_spsr |= PSR_C;
  break;
 }
}
