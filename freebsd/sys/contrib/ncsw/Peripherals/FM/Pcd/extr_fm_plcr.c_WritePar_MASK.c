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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  fmpl_par; } ;
typedef  TYPE_2__ t_FmPcdPlcrRegs ;
struct TYPE_7__ {int /*<<< orphan*/  h_Fm; TYPE_1__* p_FmPcdPlcr; } ;
typedef  TYPE_3__ t_FmPcd ;
struct TYPE_5__ {TYPE_2__* p_FmPcdPlcrRegs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FM_PCD_PLCR_PAR_GO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(t_FmPcd *p_FmPcd, uint32_t par)
{
    t_FmPcdPlcrRegs *p_FmPcdPlcrRegs    = p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs;

    FUNC0(FUNC1(p_FmPcd->h_Fm));
    FUNC3(p_FmPcdPlcrRegs->fmpl_par, par);

    while (FUNC2(p_FmPcdPlcrRegs->fmpl_par) & FM_PCD_PLCR_PAR_GO) ;
}