
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
 int memcpy (int *,char const*,int) ;

void
pt_fxsave_to_ucontext(const char* r, ucontext_t *uc)
{
 if (has_xmm_regs)
  memcpy(&uc->uc_mcontext.mc_fpstate, r, sizeof(struct savexmm));
}
