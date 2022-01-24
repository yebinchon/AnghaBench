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
struct dtsec_mii_reg {int /*<<< orphan*/  miimcfg; } ;

/* Variables and functions */
 int MIIMCFG_RESET_MGMT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

void FUNC2(struct dtsec_mii_reg *regs)
{
	/* Reset the management interface */
	FUNC1(FUNC0(&regs->miimcfg) | MIIMCFG_RESET_MGMT,
			&regs->miimcfg);
	FUNC1(FUNC0(&regs->miimcfg) & ~MIIMCFG_RESET_MGMT,
			&regs->miimcfg);
}