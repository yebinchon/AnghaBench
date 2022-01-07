
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u_int32_t ;
typedef int u_int ;
struct trapframe {int tf_cs; int tf_rip; int tf_err; size_t tf_rax; int tf_rdx; scalar_t__ tf_rsp; } ;
struct syscall_args {size_t code; int narg; void** args; TYPE_2__* callp; } ;
struct thread {int * td_retval; struct syscall_args td_sa; struct trapframe* td_frame; struct proc* td_proc; } ;
struct proc {TYPE_1__* p_sysent; } ;
typedef int quad_t ;
typedef void* caddr_t ;
struct TYPE_4__ {int sy_narg; } ;
struct TYPE_3__ {size_t sv_size; TYPE_2__* sv_table; } ;


 int EFAULT ;
 size_t SYS___syscall ;
 size_t SYS_syscall ;
 scalar_t__ __predict_false (int) ;
 int copyin (void*,void*,int ) ;
 int fueword32 (void*,void**) ;
 int fuword16 (void*) ;

int
ia32_fetch_syscall_args(struct thread *td)
{
 struct proc *p;
 struct trapframe *frame;
 struct syscall_args *sa;
 caddr_t params;
 u_int32_t args[8], tmp;
 int error, i;





 p = td->td_proc;
 frame = td->td_frame;
 sa = &td->td_sa;
 params = (caddr_t)frame->tf_rsp + sizeof(u_int32_t);
 sa->code = frame->tf_rax;




 if (sa->code == SYS_syscall) {



  error = fueword32(params, &tmp);
  if (error == -1)
   return (EFAULT);
  sa->code = tmp;
  params += sizeof(int);
 } else if (sa->code == SYS___syscall) {






  error = fueword32(params, &tmp);
  if (error == -1)
   return (EFAULT);
  sa->code = tmp;
  params += sizeof(quad_t);
 }
  if (sa->code >= p->p_sysent->sv_size)
   sa->callp = &p->p_sysent->sv_table[0];
   else
   sa->callp = &p->p_sysent->sv_table[sa->code];
 sa->narg = sa->callp->sy_narg;

 if (params != ((void*)0) && sa->narg != 0)
  error = copyin(params, (caddr_t)args,
      (u_int)(sa->narg * sizeof(int)));
 else
  error = 0;

 for (i = 0; i < sa->narg; i++)
  sa->args[i] = args[i];

 if (error == 0) {
  td->td_retval[0] = 0;
  td->td_retval[1] = frame->tf_rdx;
 }

 return (error);
}
