
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfp ;
struct thread {int dummy; } ;
typedef int mcontext_vfp_t ;


 int EINVAL ;


 int copyin (void*,int *,int) ;
 int copyout (int *,void*,int) ;
 int get_vfpcontext (struct thread*,int *) ;
 int set_vfpcontext (struct thread*,int *) ;

int
cpu_ptrace(struct thread *td, int req, void *addr, int data)
{



 int error;

 switch (req) {
 default:
  error = EINVAL;
 }

 return (error);
}
