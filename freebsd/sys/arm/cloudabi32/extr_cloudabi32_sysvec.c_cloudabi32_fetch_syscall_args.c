
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {size_t tf_r12; int tf_r1; scalar_t__ tf_usr_sp; int tf_r3; int tf_r2; int tf_r0; } ;
struct syscall_args {size_t code; int narg; int * args; TYPE_1__* callp; } ;
struct thread {int * td_retval; struct trapframe* td_frame; struct syscall_args td_sa; } ;
typedef int register_t ;
struct TYPE_2__ {int sy_narg; } ;


 size_t CLOUDABI32_SYS_MAXSYSCALL ;
 int ENOSYS ;
 TYPE_1__* cloudabi32_sysent ;
 int copyin (void*,int *,int) ;

__attribute__((used)) static int
cloudabi32_fetch_syscall_args(struct thread *td)
{
 struct trapframe *frame;
 struct syscall_args *sa;
 int error;

 frame = td->td_frame;
 sa = &td->td_sa;


 sa->code = frame->tf_r12;
 if (sa->code >= CLOUDABI32_SYS_MAXSYSCALL)
  return (ENOSYS);
 sa->callp = &cloudabi32_sysent[sa->code];
 sa->narg = sa->callp->sy_narg;


 sa->args[0] = frame->tf_r0;
 sa->args[1] = frame->tf_r1;
 sa->args[2] = frame->tf_r2;
 sa->args[3] = frame->tf_r3;
 if (sa->narg > 4) {
  error = copyin((void *)td->td_frame->tf_usr_sp, &sa->args[4],
      (sa->narg - 4) * sizeof(register_t));
  if (error != 0)
   return (error);
 }


 td->td_retval[0] = 0;
 td->td_retval[1] = frame->tf_r1;
 return (0);
}
