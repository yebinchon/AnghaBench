
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_6__ {TYPE_2__* p_FmPcdPlcr; int h_App; int (* f_FmPcdIndexedException ) (int ,int ,int ) ;int (* f_Exception ) (int ,int ) ;int h_Fm; } ;
typedef TYPE_3__ t_FmPcd ;
struct TYPE_5__ {TYPE_1__* p_FmPcdPlcrRegs; } ;
struct TYPE_4__ {int fmpl_upcr; int fmpl_eevr; int fmpl_eifr; int fmpl_eier; } ;


 int ASSERT_COND (int ) ;
 int FM_PCD_PLCR_DOUBLE_ECC ;
 int FM_PCD_PLCR_INIT_ENTRY_ERROR ;
 int FmIsMaster (int ) ;
 int GET_UINT32 (int ) ;
 int PLCR_ERR_UNINIT_CAP ;
 int PLCR_ERR_UNINIT_NUM_MASK ;
 int WRITE_UINT32 (int ,int) ;
 int e_FM_PCD_PLCR_EXCEPTION_DOUBLE_ECC ;
 int e_FM_PCD_PLCR_EXCEPTION_INIT_ENTRY_ERROR ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ,int ) ;

__attribute__((used)) static void ErrorExceptionsCB(t_Handle h_FmPcd)
{
    t_FmPcd *p_FmPcd = (t_FmPcd *)h_FmPcd;
    uint32_t event, force, captureReg, mask;

    ASSERT_COND(FmIsMaster(p_FmPcd->h_Fm));
    event = GET_UINT32(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_eevr);
    mask = GET_UINT32(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_eier);

    event &= mask;


    force = GET_UINT32(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_eifr);
    if (force & event)
        WRITE_UINT32(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_eifr, force & ~event);

    WRITE_UINT32(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_eevr, event);

    if (event & FM_PCD_PLCR_DOUBLE_ECC)
        p_FmPcd->f_Exception(p_FmPcd->h_App,e_FM_PCD_PLCR_EXCEPTION_DOUBLE_ECC);
    if (event & FM_PCD_PLCR_INIT_ENTRY_ERROR)
    {
        captureReg = GET_UINT32(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_upcr);




        p_FmPcd->f_FmPcdIndexedException(p_FmPcd->h_App,e_FM_PCD_PLCR_EXCEPTION_INIT_ENTRY_ERROR,(uint16_t)(captureReg & PLCR_ERR_UNINIT_NUM_MASK));
        WRITE_UINT32(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_upcr, PLCR_ERR_UNINIT_CAP);
    }
}
