#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  fmpl_gcr; } ;
typedef  TYPE_2__ t_FmPcdPlcrRegs ;
struct TYPE_7__ {TYPE_1__* p_FmPcdPlcr; } ;
typedef  TYPE_3__ t_FmPcd ;
struct TYPE_5__ {TYPE_2__* p_FmPcdPlcrRegs; } ;

/* Variables and functions */
 int FM_PCD_PLCR_GCR_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(t_FmPcd *p_FmPcd)
{
    t_FmPcdPlcrRegs             *p_Regs = p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs;

    FUNC1(p_Regs->fmpl_gcr, FUNC0(p_Regs->fmpl_gcr) & ~FM_PCD_PLCR_GCR_EN);
}