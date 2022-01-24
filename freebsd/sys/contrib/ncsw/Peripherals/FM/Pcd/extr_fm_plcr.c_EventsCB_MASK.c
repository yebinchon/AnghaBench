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
typedef  scalar_t__ t_Handle ;
struct TYPE_6__ {int /*<<< orphan*/  h_App; int /*<<< orphan*/  (* f_Exception ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_2__* p_FmPcdPlcr; int /*<<< orphan*/  h_Fm; } ;
typedef  TYPE_3__ t_FmPcd ;
struct TYPE_5__ {TYPE_1__* p_FmPcdPlcrRegs; } ;
struct TYPE_4__ {int /*<<< orphan*/  fmpl_evr; int /*<<< orphan*/  fmpl_ifr; int /*<<< orphan*/  fmpl_ier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FM_PCD_PLCR_ATOMIC_ACTION_COMPLETE ; 
 int FM_PCD_PLCR_PRAM_SELF_INIT_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  e_FM_PCD_PLCR_EXCEPTION_ATOMIC_ACTION_COMPLETE ; 
 int /*<<< orphan*/  e_FM_PCD_PLCR_EXCEPTION_PRAM_SELF_INIT_COMPLETE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(t_Handle h_FmPcd)
{
    t_FmPcd *p_FmPcd = (t_FmPcd *)h_FmPcd;
    uint32_t event, mask, force;

    FUNC0(FUNC1(p_FmPcd->h_Fm));
    event = FUNC2(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_evr);
    mask = FUNC2(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_ier);

    event &= mask;

    /* clear the forced events */
    force = FUNC2(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_ifr);
    if (force & event)
        FUNC3(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_ifr, force & ~event);


    FUNC3(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_evr, event);

    if (event & FM_PCD_PLCR_PRAM_SELF_INIT_COMPLETE)
        p_FmPcd->f_Exception(p_FmPcd->h_App,e_FM_PCD_PLCR_EXCEPTION_PRAM_SELF_INIT_COMPLETE);
    if (event & FM_PCD_PLCR_ATOMIC_ACTION_COMPLETE)
        p_FmPcd->f_Exception(p_FmPcd->h_App,e_FM_PCD_PLCR_EXCEPTION_ATOMIC_ACTION_COMPLETE);
}