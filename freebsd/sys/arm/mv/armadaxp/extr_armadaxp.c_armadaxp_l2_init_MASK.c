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
typedef  int u_int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARMADAXP_L2_AUX_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ARMADAXP_L2_CNTR_CTRL ; 
 int /*<<< orphan*/  ARMADAXP_L2_CTRL ; 
 int /*<<< orphan*/  ARMADAXP_L2_INT_CAUSE ; 
 int /*<<< orphan*/  COHER_FABRIC_CFU ; 
 int /*<<< orphan*/  COHER_FABRIC_CIB_CTRL ; 
 int L2_ENABLE ; 
 int L2_REP_STRAT_MASK ; 
 int L2_REP_STRAT_SEMIPLRU ; 
 int L2_WBWT_MODE_MASK ; 
 int L2_WBWT_MODE_WT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void
FUNC6(void)
{
	u_int32_t reg;

	/* Set L2 policy */
	reg = FUNC3(ARMADAXP_L2_AUX_CTRL);
	reg &= ~(L2_WBWT_MODE_MASK);
	reg &= ~(L2_REP_STRAT_MASK);
	reg |= L2_REP_STRAT_SEMIPLRU;
	reg |= L2_WBWT_MODE_WT;
	FUNC5(ARMADAXP_L2_AUX_CTRL, reg);

	/* Invalidate l2 cache */
	FUNC1();

	/* Clear pending L2 interrupts */
	FUNC5(ARMADAXP_L2_INT_CAUSE, 0x1ff);

	/* Enable l2 cache */
	reg = FUNC3(ARMADAXP_L2_CTRL);
	FUNC5(ARMADAXP_L2_CTRL, reg | L2_ENABLE);

	/*
	 * For debug purposes
	 * Configure and enable counter
	 */
	FUNC5(FUNC0(0), 0xf0000 | (4 << 2));
	FUNC5(FUNC0(1), 0xf0000 | (2 << 2));
	FUNC5(ARMADAXP_L2_CNTR_CTRL, 0x303);

	/*
	 * Enable Cache maintenance operation propagation in coherency fabric
	 * Change point of coherency and point of unification to DRAM.
	 */
	reg = FUNC2(COHER_FABRIC_CFU);
	reg |= (1 << 17) | (1 << 18);
	FUNC4(COHER_FABRIC_CFU, reg);

	/* Coherent IO Bridge initialization */
	reg = FUNC2(COHER_FABRIC_CIB_CTRL);
	reg &= ~(7 << 16);
	reg |= (7 << 16);
	FUNC4(COHER_FABRIC_CIB_CTRL, reg);
}