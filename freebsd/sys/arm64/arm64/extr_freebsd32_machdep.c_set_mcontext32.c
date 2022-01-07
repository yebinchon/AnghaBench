
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct trapframe {int tf_spsr; int tf_elr; int * tf_x; } ;
struct thread {struct trapframe* td_frame; } ;
typedef int mcontext32_vfp_t ;
struct TYPE_3__ {int mc_vfp_size; scalar_t__ mc_vfp_ptr; int * mc_gregset; } ;
typedef TYPE_1__ mcontext32_t ;
typedef int mc_vfp ;


 int EFAULT ;
 scalar_t__ copyin (void*,int *,int) ;
 int set_fpcontext32 (struct thread*,int *) ;

__attribute__((used)) static int
set_mcontext32(struct thread *td, mcontext32_t *mcp)
{
 struct trapframe *tf;
 mcontext32_vfp_t mc_vfp;
 int i;

 tf = td->td_frame;

 for (i = 0; i < 15; i++)
  tf->tf_x[i] = mcp->mc_gregset[i];
 tf->tf_elr = mcp->mc_gregset[15];
 tf->tf_spsr = mcp->mc_gregset[16];
 return (0);
}
