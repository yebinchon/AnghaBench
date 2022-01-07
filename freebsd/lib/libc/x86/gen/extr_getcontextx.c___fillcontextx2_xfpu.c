
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* addr; void* len; } ;
typedef TYPE_2__ x86_get_xfpustate_t ;
struct TYPE_5__ {int mc_flags; void* mc_xfpustate_len; scalar_t__ mc_xfpustate; } ;
struct TYPE_7__ {TYPE_1__ uc_mcontext; } ;
typedef TYPE_3__ ucontext_t ;
typedef scalar_t__ __register_t ;


 int X86_GET_XFPUSTATE ;
 int _MC_HASFPXSTATE ;
 int sysarch (int ,TYPE_2__*) ;
 void* xstate_sz ;

__attribute__((used)) static int
__fillcontextx2_xfpu(char *ctx)
{
 x86_get_xfpustate_t xfpu;
 ucontext_t *ucp;

 ucp = (ucontext_t *)ctx;
 xfpu.addr = (char *)(ucp + 1);
 xfpu.len = xstate_sz;
 if (sysarch(X86_GET_XFPUSTATE, &xfpu) == -1)
  return (-1);
 ucp->uc_mcontext.mc_xfpustate = (__register_t)xfpu.addr;
 ucp->uc_mcontext.mc_xfpustate_len = xstate_sz;
 ucp->uc_mcontext.mc_flags |= _MC_HASFPXSTATE;
 return (0);
}
