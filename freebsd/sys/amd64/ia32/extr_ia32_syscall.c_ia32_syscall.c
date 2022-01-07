
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct trapframe {int tf_rflags; scalar_t__ tf_rip; } ;
struct thread {int td_errno; struct trapframe* td_frame; } ;
typedef int register_t ;
struct TYPE_4__ {void* ksi_addr; int ksi_code; int ksi_signo; } ;
typedef TYPE_1__ ksiginfo_t ;


 int PSL_T ;
 int SIGTRAP ;
 int TRAP_TRACE ;
 int amd64_syscall_ret_flush_l1d (int ) ;
 struct thread* curthread ;
 int ksiginfo_init_trap (TYPE_1__*) ;
 int syscallenter (struct thread*) ;
 int syscallret (struct thread*) ;
 int trapsignal (struct thread*,TYPE_1__*) ;

void
ia32_syscall(struct trapframe *frame)
{
 struct thread *td;
 register_t orig_tf_rflags;
 ksiginfo_t ksi;

 orig_tf_rflags = frame->tf_rflags;
 td = curthread;
 td->td_frame = frame;

 syscallenter(td);




 if (orig_tf_rflags & PSL_T) {
  frame->tf_rflags &= ~PSL_T;
  ksiginfo_init_trap(&ksi);
  ksi.ksi_signo = SIGTRAP;
  ksi.ksi_code = TRAP_TRACE;
  ksi.ksi_addr = (void *)frame->tf_rip;
  trapsignal(td, &ksi);
 }

 syscallret(td);
 amd64_syscall_ret_flush_l1d(td->td_errno);
}
