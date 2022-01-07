
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mc_flags; int mc_fpreg; } ;
struct TYPE_4__ {TYPE_2__ uc_mcontext; } ;
typedef TYPE_1__ ucontext_t ;
struct fpreg {int dummy; } ;
typedef TYPE_2__ mcontext_t ;


 int MIN (int,int) ;
 int _MC_FP_VALID ;
 int memcpy (struct fpreg*,int ,int ) ;
 int memset (struct fpreg*,int ,int) ;

void
pt_ucontext_to_fpreg(const ucontext_t *uc, struct fpreg *r)
{
 const mcontext_t *mc = &uc->uc_mcontext;

 if (mc->mc_flags & _MC_FP_VALID)
  memcpy(r, mc->mc_fpreg, MIN(sizeof(mc->mc_fpreg), sizeof(*r)));
 else
  memset(r, 0, sizeof(*r));
}
