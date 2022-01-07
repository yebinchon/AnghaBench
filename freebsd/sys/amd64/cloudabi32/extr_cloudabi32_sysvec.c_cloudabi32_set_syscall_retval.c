
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_rax; scalar_t__ tf_rcx; scalar_t__ tf_r10; int tf_err; int tf_rip; } ;
struct thread {int td_pcb; int td_retval; struct trapframe* td_frame; } ;


 int CLOUDABI_EFAULT ;


 int PCB_FULL_IRET ;
 int cloudabi_convert_errno (int) ;
 int copyout (int ,void*,int) ;
 int set_pcb_flags (int ,int ) ;

__attribute__((used)) static void
cloudabi32_set_syscall_retval(struct thread *td, int error)
{
 struct trapframe *frame = td->td_frame;

 switch (error) {
 case 0:
  frame->tf_rax = copyout(td->td_retval, (void *)frame->tf_rcx,
      sizeof(td->td_retval)) == 0 ? 0 : CLOUDABI_EFAULT;
  break;
 case 128:

  frame->tf_rip -= frame->tf_err;
  frame->tf_r10 = frame->tf_rcx;
  set_pcb_flags(td->td_pcb, PCB_FULL_IRET);
  break;
 case 129:
  break;
 default:

  frame->tf_rax = cloudabi_convert_errno(error);
  break;
 }
}
