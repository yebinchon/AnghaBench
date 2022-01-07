
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_rcx; int tf_r10; int tf_rdx; } ;
struct thread {int td_pcb; int * td_retval; struct trapframe* td_frame; } ;


 int EJUSTRETURN ;
 int PCB_FULL_IRET ;
 int cpu_set_syscall_retval (struct thread*,int) ;
 int set_pcb_flags (int ,int ) ;

__attribute__((used)) static void
linux_set_syscall_retval(struct thread *td, int error)
{
 struct trapframe *frame = td->td_frame;





 td->td_retval[1] = frame->tf_rdx;
 if (error != EJUSTRETURN)
  frame->tf_r10 = frame->tf_rcx;

 cpu_set_syscall_retval(td, error);


 set_pcb_flags(td->td_pcb, PCB_FULL_IRET);
}
