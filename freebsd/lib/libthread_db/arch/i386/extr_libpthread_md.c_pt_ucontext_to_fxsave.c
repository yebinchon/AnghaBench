
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mc_fpstate; } ;
struct TYPE_5__ {TYPE_1__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;
struct savexmm {int dummy; } ;


 scalar_t__ has_xmm_regs ;
 int memcpy (char*,int *,int) ;

void
pt_ucontext_to_fxsave(const ucontext_t *uc, char *r)
{
 if (has_xmm_regs)
  memcpy(r, &uc->uc_mcontext.mc_fpstate, sizeof(struct savexmm));
}
