
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int h_Fm; TYPE_1__* p_FmPcdKg; } ;
typedef TYPE_2__ t_FmPcd ;
struct fman_kg_regs {int dummy; } ;
struct TYPE_4__ {struct fman_kg_regs* p_FmPcdKgRegs; } ;


 int ASSERT_COND (int ) ;
 int FmIsMaster (int ) ;
 int fman_kg_disable (struct fman_kg_regs*) ;

void KgDisable(t_FmPcd *p_FmPcd)
{
    struct fman_kg_regs *p_Regs = p_FmPcd->p_FmPcdKg->p_FmPcdKgRegs;

    ASSERT_COND(FmIsMaster(p_FmPcd->h_Fm));
    fman_kg_disable(p_Regs);
}
