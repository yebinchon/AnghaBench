#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_6__ {TYPE_2__* p_FmPcdPlcr; int /*<<< orphan*/  h_App; int /*<<< orphan*/  (* f_FmPcdIndexedException ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* f_Exception ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  h_Fm; } ;
typedef  TYPE_3__ t_FmPcd ;
struct TYPE_5__ {TYPE_1__* p_FmPcdPlcrRegs; } ;
struct TYPE_4__ {int /*<<< orphan*/  fmpl_upcr; int /*<<< orphan*/  fmpl_eevr; int /*<<< orphan*/  fmpl_eifr; int /*<<< orphan*/  fmpl_eier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FM_PCD_PLCR_DOUBLE_ECC ; 
 int FM_PCD_PLCR_INIT_ENTRY_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int PLCR_ERR_UNINIT_CAP ; 
 int PLCR_ERR_UNINIT_NUM_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  e_FM_PCD_PLCR_EXCEPTION_DOUBLE_ECC ; 
 int /*<<< orphan*/  e_FM_PCD_PLCR_EXCEPTION_INIT_ENTRY_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(t_Handle h_FmPcd)
{
    t_FmPcd             *p_FmPcd = (t_FmPcd *)h_FmPcd;
    uint32_t            event, force, captureReg, mask;

    FUNC0(FUNC1(p_FmPcd->h_Fm));
    event = FUNC2(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_eevr);
    mask = FUNC2(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_eier);

    event &= mask;

    /* clear the forced events */
    force = FUNC2(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_eifr);
    if (force & event)
        FUNC3(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_eifr, force & ~event);

    FUNC3(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_eevr, event);

    if (event & FM_PCD_PLCR_DOUBLE_ECC)
        p_FmPcd->f_Exception(p_FmPcd->h_App,e_FM_PCD_PLCR_EXCEPTION_DOUBLE_ECC);
    if (event & FM_PCD_PLCR_INIT_ENTRY_ERROR)
    {
        captureReg = FUNC2(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_upcr);
        /*ASSERT_COND(captureReg & PLCR_ERR_UNINIT_CAP);
        p_UnInitCapt->profileNum = (uint8_t)(captureReg & PLCR_ERR_UNINIT_NUM_MASK);
        p_UnInitCapt->portId = (uint8_t)((captureReg & PLCR_ERR_UNINIT_PID_MASK) >>PLCR_ERR_UNINIT_PID_SHIFT) ;
        p_UnInitCapt->absolute = (bool)(captureReg & PLCR_ERR_UNINIT_ABSOLUTE_MASK);*/
        p_FmPcd->f_FmPcdIndexedException(p_FmPcd->h_App,e_FM_PCD_PLCR_EXCEPTION_INIT_ENTRY_ERROR,(uint16_t)(captureReg & PLCR_ERR_UNINIT_NUM_MASK));
        FUNC3(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_upcr, PLCR_ERR_UNINIT_CAP);
    }
}