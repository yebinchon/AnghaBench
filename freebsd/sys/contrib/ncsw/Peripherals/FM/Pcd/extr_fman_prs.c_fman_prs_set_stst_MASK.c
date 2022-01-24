#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fman_prs_regs {int /*<<< orphan*/  fmpr_ppsc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM_PCD_PRS_PPSC_ALL_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC1(struct fman_prs_regs *regs, bool enable)
{
	if (enable)
		FUNC0(FM_PCD_PRS_PPSC_ALL_PORTS, &regs->fmpr_ppsc);
	else
		FUNC0(0, &regs->fmpr_ppsc);
}