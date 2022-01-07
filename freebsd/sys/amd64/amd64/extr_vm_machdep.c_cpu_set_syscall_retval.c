
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_rflags; int tf_rax; int tf_rcx; int tf_r10; int tf_err; int tf_rip; int tf_rdx; } ;
struct thread {int td_proc; int td_pcb; int * td_retval; struct trapframe* td_frame; } ;




 int PCB_FULL_IRET ;
 int PSL_C ;
 int SV_ABI_ERRNO (int ,int) ;
 scalar_t__ __predict_true (int) ;
 int set_pcb_flags (int ,int ) ;

void
cpu_set_syscall_retval(struct thread *td, int error)
{
 struct trapframe *frame;

 frame = td->td_frame;
 if (__predict_true(error == 0)) {
  frame->tf_rax = td->td_retval[0];
  frame->tf_rdx = td->td_retval[1];
  frame->tf_rflags &= ~PSL_C;
  return;
 }

 switch (error) {
 case 128:
  frame->tf_rip -= frame->tf_err;
  frame->tf_r10 = frame->tf_rcx;
  set_pcb_flags(td->td_pcb, PCB_FULL_IRET);
  break;

 case 129:
  break;

 default:
  frame->tf_rax = SV_ABI_ERRNO(td->td_proc, error);
  frame->tf_rflags |= PSL_C;
  break;
 }
}
