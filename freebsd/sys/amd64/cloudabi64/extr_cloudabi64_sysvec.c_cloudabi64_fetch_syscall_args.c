
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {size_t tf_rax; int tf_rdx; int tf_r9; int tf_r8; int tf_rcx; int tf_rsi; int tf_rdi; } ;
struct syscall_args {size_t code; int * args; TYPE_1__* callp; int narg; } ;
struct thread {int * td_retval; struct syscall_args td_sa; struct trapframe* td_frame; } ;
struct TYPE_2__ {int sy_narg; } ;


 size_t CLOUDABI64_SYS_MAXSYSCALL ;
 int ENOSYS ;
 TYPE_1__* cloudabi64_sysent ;

__attribute__((used)) static int
cloudabi64_fetch_syscall_args(struct thread *td)
{
 struct trapframe *frame;
 struct syscall_args *sa;

 frame = td->td_frame;
 sa = &td->td_sa;


 sa->code = frame->tf_rax;
 if (sa->code >= CLOUDABI64_SYS_MAXSYSCALL)
  return (ENOSYS);
 sa->callp = &cloudabi64_sysent[sa->code];
 sa->narg = sa->callp->sy_narg;


 sa->args[0] = frame->tf_rdi;
 sa->args[1] = frame->tf_rsi;
 sa->args[2] = frame->tf_rdx;
 sa->args[3] = frame->tf_rcx;
 sa->args[4] = frame->tf_r8;
 sa->args[5] = frame->tf_r9;


 td->td_retval[0] = 0;
 td->td_retval[1] = frame->tf_rdx;
 return (0);
}
