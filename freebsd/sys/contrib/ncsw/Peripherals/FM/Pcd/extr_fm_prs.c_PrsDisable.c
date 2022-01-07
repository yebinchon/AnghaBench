
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ guestId; TYPE_1__* p_FmPcdPrs; } ;
typedef TYPE_2__ t_FmPcd ;
struct fman_prs_regs {int dummy; } ;
struct TYPE_4__ {scalar_t__ p_FmPcdPrsRegs; } ;


 int ASSERT_COND (int) ;
 scalar_t__ NCSW_MASTER_ID ;
 int fman_prs_disable (struct fman_prs_regs*) ;

void PrsDisable(t_FmPcd *p_FmPcd)
{
    struct fman_prs_regs *PrsRegs = (struct fman_prs_regs *)p_FmPcd->p_FmPcdPrs->p_FmPcdPrsRegs;

    ASSERT_COND(p_FmPcd->guestId == NCSW_MASTER_ID);
    fman_prs_disable(PrsRegs);
}
