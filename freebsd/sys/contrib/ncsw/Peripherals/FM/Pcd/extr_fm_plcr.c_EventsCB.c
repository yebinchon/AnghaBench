
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_6__ {int h_App; int (* f_Exception ) (int ,int ) ;TYPE_2__* p_FmPcdPlcr; int h_Fm; } ;
typedef TYPE_3__ t_FmPcd ;
struct TYPE_5__ {TYPE_1__* p_FmPcdPlcrRegs; } ;
struct TYPE_4__ {int fmpl_evr; int fmpl_ifr; int fmpl_ier; } ;


 int ASSERT_COND (int ) ;
 int FM_PCD_PLCR_ATOMIC_ACTION_COMPLETE ;
 int FM_PCD_PLCR_PRAM_SELF_INIT_COMPLETE ;
 int FmIsMaster (int ) ;
 int GET_UINT32 (int ) ;
 int WRITE_UINT32 (int ,int) ;
 int e_FM_PCD_PLCR_EXCEPTION_ATOMIC_ACTION_COMPLETE ;
 int e_FM_PCD_PLCR_EXCEPTION_PRAM_SELF_INIT_COMPLETE ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static void EventsCB(t_Handle h_FmPcd)
{
    t_FmPcd *p_FmPcd = (t_FmPcd *)h_FmPcd;
    uint32_t event, mask, force;

    ASSERT_COND(FmIsMaster(p_FmPcd->h_Fm));
    event = GET_UINT32(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_evr);
    mask = GET_UINT32(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_ier);

    event &= mask;


    force = GET_UINT32(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_ifr);
    if (force & event)
        WRITE_UINT32(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_ifr, force & ~event);


    WRITE_UINT32(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_evr, event);

    if (event & FM_PCD_PLCR_PRAM_SELF_INIT_COMPLETE)
        p_FmPcd->f_Exception(p_FmPcd->h_App,e_FM_PCD_PLCR_EXCEPTION_PRAM_SELF_INIT_COMPLETE);
    if (event & FM_PCD_PLCR_ATOMIC_ACTION_COMPLETE)
        p_FmPcd->f_Exception(p_FmPcd->h_App,e_FM_PCD_PLCR_EXCEPTION_ATOMIC_ACTION_COMPLETE);
}
