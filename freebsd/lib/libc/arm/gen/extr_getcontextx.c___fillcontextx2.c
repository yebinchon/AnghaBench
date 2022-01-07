
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mc_vfp_size; int * mc_vfp_ptr; } ;
struct TYPE_4__ {TYPE_1__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;
struct ucontextx {int mcontext_vfp; TYPE_2__ ucontext; } ;
struct arm_get_vfpstate_args {int mc_vfp_size; int * mc_vfp; } ;
typedef int mcontext_vfp_t ;


 int ARM_GET_VFPSTATE ;
 int sysarch (int ,struct arm_get_vfpstate_args*) ;

int
__fillcontextx2(char *ctx)
{
 struct ucontextx *ucxp;
 ucontext_t *ucp;
 mcontext_vfp_t *mvp;
 struct arm_get_vfpstate_args vfp_arg;

 ucxp = (struct ucontextx *)ctx;
 ucp = &ucxp->ucontext;
 mvp = &ucxp->mcontext_vfp;

 vfp_arg.mc_vfp_size = sizeof(mcontext_vfp_t);
 vfp_arg.mc_vfp = mvp;
 if (sysarch(ARM_GET_VFPSTATE, &vfp_arg) == -1)
   return (-1);
 ucp->uc_mcontext.mc_vfp_size = sizeof(mcontext_vfp_t);
 ucp->uc_mcontext.mc_vfp_ptr = mvp;
 return (0);
}
