
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct trapframe {int tf_rip; int tf_flags; scalar_t__ tf_rsp; int tf_rax; } ;
struct thread {struct trapframe* td_frame; } ;
typedef int retqaddr ;


 int EINVAL ;
 int LINUX_VSYSCALL_START ;
 int LINUX_VSYSCALL_SZ ;
 int PSL_T ;
 scalar_t__ __predict_true (int) ;
 int amd64_syscall (struct thread*,int) ;
 int copyin (void*,int*,int) ;
 int * linux_vsyscall_vector ;
 int nitems (int *) ;

__attribute__((used)) static int
linux_vsyscall(struct thread *td)
{
 struct trapframe *frame;
 uint64_t retqaddr;
 int code, traced;
 int error;

 frame = td->td_frame;


 if (__predict_true(frame->tf_rip < LINUX_VSYSCALL_START))
  return (EINVAL);
 if ((frame->tf_rip & (LINUX_VSYSCALL_SZ - 1)) != 0)
  return (EINVAL);
 code = (frame->tf_rip - LINUX_VSYSCALL_START) / LINUX_VSYSCALL_SZ;
 if (code >= nitems(linux_vsyscall_vector))
  return (EINVAL);





 error = copyin((void *)frame->tf_rsp, &retqaddr, sizeof(retqaddr));
 if (error)
  return (error);

 frame->tf_rip = retqaddr;
 frame->tf_rax = linux_vsyscall_vector[code];
 frame->tf_rsp += 8;

 traced = (frame->tf_flags & PSL_T);

 amd64_syscall(td, traced);

 return (0);
}
