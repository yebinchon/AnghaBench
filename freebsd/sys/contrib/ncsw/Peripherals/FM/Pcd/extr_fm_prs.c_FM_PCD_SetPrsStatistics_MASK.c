#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ t_Handle ;
struct TYPE_3__ {scalar_t__ guestId; scalar_t__ p_FmPcdPrsRegs; struct TYPE_3__* p_FmPcdPrs; } ;
typedef  TYPE_1__ t_FmPcd ;
struct fman_prs_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_NOT_SUPPORTED ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ NCSW_MASTER_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fman_prs_regs*,int) ; 

void FUNC3(t_Handle h_FmPcd, bool enable)
{
    t_FmPcd             *p_FmPcd = (t_FmPcd*)h_FmPcd;
    struct fman_prs_regs *PrsRegs;

    FUNC1(p_FmPcd, E_INVALID_HANDLE);
    FUNC1(p_FmPcd->p_FmPcdPrs, E_INVALID_HANDLE);

    PrsRegs = (struct fman_prs_regs *)p_FmPcd->p_FmPcdPrs->p_FmPcdPrsRegs;


    if(p_FmPcd->guestId != NCSW_MASTER_ID)
    {
        FUNC0(MAJOR, E_NOT_SUPPORTED, ("FM_PCD_SetPrsStatistics - guest mode!"));
        return;
    }

    FUNC2(PrsRegs, enable);
}