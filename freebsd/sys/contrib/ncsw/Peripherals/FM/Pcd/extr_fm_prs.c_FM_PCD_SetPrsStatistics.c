
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_3__ {scalar_t__ guestId; scalar_t__ p_FmPcdPrsRegs; struct TYPE_3__* p_FmPcdPrs; } ;
typedef TYPE_1__ t_FmPcd ;
struct fman_prs_regs {int dummy; } ;


 int E_INVALID_HANDLE ;
 int E_NOT_SUPPORTED ;
 int MAJOR ;
 scalar_t__ NCSW_MASTER_ID ;
 int REPORT_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN (TYPE_1__*,int ) ;
 int fman_prs_set_stst (struct fman_prs_regs*,int) ;

void FM_PCD_SetPrsStatistics(t_Handle h_FmPcd, bool enable)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;
    struct fman_prs_regs *PrsRegs;

    SANITY_CHECK_RETURN(p_FmPcd, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN(p_FmPcd->p_FmPcdPrs, E_INVALID_HANDLE);

    PrsRegs = (struct fman_prs_regs *)p_FmPcd->p_FmPcdPrs->p_FmPcdPrsRegs;


    if(p_FmPcd->guestId != NCSW_MASTER_ID)
    {
        REPORT_ERROR(MAJOR, E_NOT_SUPPORTED, ("FM_PCD_SetPrsStatistics - guest mode!"));
        return;
    }

    fman_prs_set_stst(PrsRegs, enable);
}
