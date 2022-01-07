
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mc_flags; int mc_fpregs; } ;
struct TYPE_4__ {TYPE_2__ uc_mcontext; } ;
typedef TYPE_1__ ucontext_t ;
struct fpreg {int dummy; } ;
typedef TYPE_2__ mcontext_t ;


 int _MC_FP_VALID ;
 int memcpy (int *,struct fpreg const*,int) ;

void
pt_fpreg_to_ucontext(const struct fpreg *r, ucontext_t *uc)
{
 mcontext_t *mc = &uc->uc_mcontext;

 memcpy(&mc->mc_fpregs, r, sizeof(*r));
 mc->mc_flags |= _MC_FP_VALID;
}
