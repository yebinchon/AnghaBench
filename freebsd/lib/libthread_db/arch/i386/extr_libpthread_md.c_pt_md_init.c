
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mc_fpformat; } ;
struct TYPE_5__ {TYPE_1__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;


 scalar_t__ _MC_FPFMT_XMM ;
 int getcontext (TYPE_2__*) ;
 int has_xmm_regs ;

void
pt_md_init(void)
{
 ucontext_t uc;

 getcontext(&uc);
 if (uc.uc_mcontext.mc_fpformat == _MC_FPFMT_XMM)
     has_xmm_regs = 1;
}
