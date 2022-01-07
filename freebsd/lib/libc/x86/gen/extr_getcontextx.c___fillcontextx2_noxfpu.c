
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mc_xfpustate_len; scalar_t__ mc_xfpustate; } ;
struct TYPE_4__ {TYPE_1__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;



__attribute__((used)) static int
__fillcontextx2_noxfpu(char *ctx)
{
 ucontext_t *ucp;

 ucp = (ucontext_t *)ctx;
 ucp->uc_mcontext.mc_xfpustate = 0;
 ucp->uc_mcontext.mc_xfpustate_len = 0;
 return (0);
}
