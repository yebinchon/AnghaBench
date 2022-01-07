
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_elr; int tf_spsr; scalar_t__* tf_x; } ;
struct thread {int td_retval; struct trapframe* td_frame; } ;


 scalar_t__ CLOUDABI_EFAULT ;


 int PSR_C ;
 scalar_t__ cloudabi_convert_errno (int) ;
 int copyout (int ,void*,int) ;

__attribute__((used)) static void
cloudabi32_set_syscall_retval(struct thread *td, int error)
{
 struct trapframe *frame = td->td_frame;

 switch (error) {
 case 0:
  if (copyout(td->td_retval, (void *)frame->tf_x[2],
      sizeof(td->td_retval)) == 0) {
   frame->tf_x[0] = 0;
   frame->tf_spsr &= ~PSR_C;
  } else {
   frame->tf_x[0] = CLOUDABI_EFAULT;
   frame->tf_spsr |= PSR_C;
  }
  break;
 case 128:

  frame->tf_elr -= 4;
  break;
 case 129:
  break;
 default:

  frame->tf_x[0] = cloudabi_convert_errno(error);
  frame->tf_spsr |= PSR_C;
  break;
 }
}
