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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int CCMR_CCGR_NSOURCE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ccm_softc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC4(int clk_src, int mode)
{
	int field, group;
	uint32_t reg;

	group = FUNC1(clk_src);
	field = clk_src % CCMR_CCGR_NSOURCE;
	reg = FUNC2(ccm_softc, FUNC0(group));
	reg &= ~(0x03 << field * 2);
	reg |= (mode << field * 2);
	FUNC3(ccm_softc, FUNC0(group), reg);
}