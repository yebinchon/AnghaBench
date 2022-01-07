
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct savefpu {int dummy; } ;
struct TYPE_3__ {scalar_t__ mc_fpformat; scalar_t__ mc_ownedfp; int mc_fpstate; } ;
typedef TYPE_1__ mcontext_t ;


 int EINVAL ;
 scalar_t__ _MC_FPFMT_NODEV ;
 scalar_t__ _MC_FPFMT_XMM ;
 scalar_t__ _MC_FPOWNED_FPU ;
 scalar_t__ _MC_FPOWNED_NONE ;
 scalar_t__ _MC_FPOWNED_PCB ;
 int fpstate_drop (struct thread*) ;
 int fpusetregs (struct thread*,struct savefpu*,char*,size_t) ;

__attribute__((used)) static int
set_fpcontext(struct thread *td, mcontext_t *mcp, char *xfpustate,
    size_t xfpustate_len)
{
 int error;

 if (mcp->mc_fpformat == _MC_FPFMT_NODEV)
  return (0);
 else if (mcp->mc_fpformat != _MC_FPFMT_XMM)
  return (EINVAL);
 else if (mcp->mc_ownedfp == _MC_FPOWNED_NONE) {

  fpstate_drop(td);
  error = 0;
 } else if (mcp->mc_ownedfp == _MC_FPOWNED_FPU ||
     mcp->mc_ownedfp == _MC_FPOWNED_PCB) {
  error = fpusetregs(td, (struct savefpu *)&mcp->mc_fpstate,
      xfpustate, xfpustate_len);
 } else
  return (EINVAL);
 return (error);
}
