
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_4__ {scalar_t__ guestId; int h_App; int (* f_Exception ) (int ,int ) ;TYPE_1__* p_FmPcdPrs; } ;
typedef TYPE_2__ t_FmPcd ;
struct fman_prs_regs {int dummy; } ;
struct TYPE_3__ {scalar_t__ p_FmPcdPrsRegs; } ;


 int ASSERT_COND (int) ;
 int DBG (int ,char*) ;
 int FM_PCD_PRS_SINGLE_ECC ;
 scalar_t__ NCSW_MASTER_ID ;
 int TRACE ;
 int e_FM_PCD_PRS_EXCEPTION_SINGLE_ECC ;
 int fman_prs_ack_expt_event (struct fman_prs_regs*,int) ;
 int fman_prs_get_expt_ev_mask (struct fman_prs_regs*) ;
 int fman_prs_get_expt_event (struct fman_prs_regs*,int) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void PcdPrsException(t_Handle h_FmPcd)
{
    t_FmPcd *p_FmPcd = (t_FmPcd *)h_FmPcd;
    uint32_t event, ev_mask;
    struct fman_prs_regs *PrsRegs = (struct fman_prs_regs *)p_FmPcd->p_FmPcdPrs->p_FmPcdPrsRegs;

    ASSERT_COND(p_FmPcd->guestId == NCSW_MASTER_ID);
    ev_mask = fman_prs_get_expt_ev_mask(PrsRegs);
    event = fman_prs_get_expt_event(PrsRegs, ev_mask);

    ASSERT_COND(event & FM_PCD_PRS_SINGLE_ECC);

    DBG(TRACE, ("parser event - 0x%08x\n",event));

    fman_prs_ack_expt_event(PrsRegs, event);

    p_FmPcd->f_Exception(p_FmPcd->h_App,e_FM_PCD_PRS_EXCEPTION_SINGLE_ECC);
}
