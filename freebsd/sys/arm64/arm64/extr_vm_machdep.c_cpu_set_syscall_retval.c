
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_elr; int * tf_x; int tf_spsr; } ;
struct thread {int td_proc; int * td_retval; struct trapframe* td_frame; } ;




 int PSR_C ;
 int SV_ABI_ERRNO (int ,int) ;

void
cpu_set_syscall_retval(struct thread *td, int error)
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
  frame->tf_elr -= 4;
  break;
 case 129:
  break;
 default:
  frame->tf_spsr |= PSR_C;
  frame->tf_x[0] = SV_ABI_ERRNO(td->td_proc, error);
  break;
 }
}
