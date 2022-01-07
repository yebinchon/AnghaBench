
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct trapframe {scalar_t__ tf_r7; scalar_t__ tf_r0; scalar_t__ tf_r1; int tf_spsr; int tf_pc; } ;
struct thread {scalar_t__* td_retval; int td_proc; struct trapframe* td_frame; } ;
typedef scalar_t__ register_t ;




 int INSN_SIZE ;
 int PSR_C ;
 int PSR_T ;
 scalar_t__ SV_ABI_ERRNO (int ,int) ;
 scalar_t__ SYS___syscall ;
 scalar_t__ SYS_lseek ;
 int THUMB_INSN_SIZE ;
 size_t _QUAD_LOWWORD ;

void
cpu_set_syscall_retval(struct thread *td, int error)
{
 struct trapframe *frame;
 int fixup;




 frame = td->td_frame;
 fixup = 0;
 switch (error) {
 case 0:
  if (fixup) {
   frame->tf_r0 = 0;
   frame->tf_r1 = td->td_retval[0];
  } else {
   frame->tf_r0 = td->td_retval[0];
   frame->tf_r1 = td->td_retval[1];
  }
  frame->tf_spsr &= ~PSR_C;
  break;
 case 128:
   frame->tf_pc -= INSN_SIZE;
  break;
 case 129:

  break;
 default:
  frame->tf_r0 = SV_ABI_ERRNO(td->td_proc, error);
  frame->tf_spsr |= PSR_C;
  break;
 }
}
