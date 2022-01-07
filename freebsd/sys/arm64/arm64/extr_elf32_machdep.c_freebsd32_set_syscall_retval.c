
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int* tf_x; int tf_spsr; int tf_elr; } ;
struct thread {int* td_retval; struct trapframe* td_frame; } ;




 int PSR_C ;
 int PSR_T ;

__attribute__((used)) static void
freebsd32_set_syscall_retval(struct thread *td, int error)
{
 struct trapframe *frame;

 frame = td->td_frame;
 switch (error) {
 case 0:
  frame->tf_x[0] = td->td_retval[0];
  frame->tf_x[1] = td->td_retval[1];
  frame->tf_spsr &= ~PSR_C;
  break;
 case 128:



  if ((frame->tf_spsr & PSR_T) != 0)
   frame->tf_elr -= 2;
  else
   frame->tf_elr -= 4;
  break;
 case 129:

  break;
 default:
  frame->tf_x[0] = error;
  frame->tf_spsr |= PSR_C;
  break;
 }
}
