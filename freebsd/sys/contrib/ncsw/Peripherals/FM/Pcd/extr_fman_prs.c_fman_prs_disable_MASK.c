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
typedef  int uint32_t ;
struct fman_prs_regs {int /*<<< orphan*/  fmpr_rpimac; } ;

/* Variables and functions */
 int FM_PCD_PRS_RPIMAC_EN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

void FUNC2(struct fman_prs_regs *regs)
{
	uint32_t tmp;

	tmp = FUNC0(&regs->fmpr_rpimac) & ~FM_PCD_PRS_RPIMAC_EN;
	FUNC1(tmp, &regs->fmpr_rpimac);
}