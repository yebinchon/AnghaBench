
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trapframe {size_t tf_rax; int tf_r9; int tf_r8; int tf_rcx; int tf_rdx; int tf_rsi; int tf_rdi; } ;
struct syscall_args {size_t code; TYPE_2__* callp; int narg; int * args; } ;
struct thread {scalar_t__* td_retval; struct syscall_args td_sa; struct trapframe* td_frame; struct proc* td_proc; } ;
struct proc {TYPE_1__* p_sysent; } ;
struct TYPE_4__ {int sy_narg; } ;
struct TYPE_3__ {size_t sv_size; TYPE_2__* sv_table; } ;



__attribute__((used)) static int
linux_fetch_syscall_args(struct thread *td)
{
 struct proc *p;
 struct trapframe *frame;
 struct syscall_args *sa;

 p = td->td_proc;
 frame = td->td_frame;
 sa = &td->td_sa;

 sa->args[0] = frame->tf_rdi;
 sa->args[1] = frame->tf_rsi;
 sa->args[2] = frame->tf_rdx;
 sa->args[3] = frame->tf_rcx;
 sa->args[4] = frame->tf_r8;
 sa->args[5] = frame->tf_r9;
 sa->code = frame->tf_rax;

 if (sa->code >= p->p_sysent->sv_size)

  sa->callp = &p->p_sysent->sv_table[p->p_sysent->sv_size - 1];
 else
  sa->callp = &p->p_sysent->sv_table[sa->code];
 sa->narg = sa->callp->sy_narg;

 td->td_retval[0] = 0;
 return (0);
}
