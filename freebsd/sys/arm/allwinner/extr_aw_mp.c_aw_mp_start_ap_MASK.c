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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  platform_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  A20_CPU1_PWROFF_REG ; 
 int /*<<< orphan*/  A20_CPU1_PWR_CLAMP ; 
 int /*<<< orphan*/  A20_CPUCFG_BASE ; 
 int ALLWINNERSOC_SUN7I ; 
 int /*<<< orphan*/  CPUCFG_BASE ; 
 int /*<<< orphan*/  CPUCFG_DBGCTL1 ; 
 int /*<<< orphan*/  CPUCFG_GENCTL ; 
 int /*<<< orphan*/  CPUCFG_P_REG0 ; 
 int /*<<< orphan*/  CPUCFG_SIZE ; 
 int CPU_CORE_RESET ; 
 int /*<<< orphan*/  CPU_PWROFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CPU_PWR_CLAMP_STEPS ; 
 int CPU_RESET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  PRCM_BASE ; 
 int /*<<< orphan*/  PRCM_SIZE ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 int mp_ncpus ; 
 scalar_t__ mpentry ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

void
FUNC13(platform_t plat)
{
	bus_space_handle_t cpucfg;
	bus_space_handle_t prcm;
	int i, j, soc_family;
	uint32_t val;

	soc_family = FUNC3();
	if (soc_family == ALLWINNERSOC_SUN7I) {
		if (FUNC4(fdtbus_bs_tag, A20_CPUCFG_BASE, CPUCFG_SIZE,
		    0, &cpucfg) != 0)
			FUNC10("Couldn't map the CPUCFG\n");
	} else {
		if (FUNC4(fdtbus_bs_tag, CPUCFG_BASE, CPUCFG_SIZE,
		    0, &cpucfg) != 0)
			FUNC10("Couldn't map the CPUCFG\n");
		if (FUNC4(fdtbus_bs_tag, PRCM_BASE, PRCM_SIZE, 0,
		    &prcm) != 0)
			FUNC10("Couldn't map the PRCM\n");
	}

	FUNC8();

	FUNC7(fdtbus_bs_tag, cpucfg, CPUCFG_P_REG0,
	    FUNC11((vm_offset_t)mpentry));

	/*
	 * Assert nCOREPORESET low and set L1RSTDISABLE low.
	 * Ensure DBGPWRDUP is set to LOW to prevent any external
	 * debug access to the processor.
	 */
	for (i = 1; i < mp_ncpus; i++)
		FUNC7(fdtbus_bs_tag, cpucfg, FUNC1(i), 0);

	/* Set L1RSTDISABLE low */
	val = FUNC5(fdtbus_bs_tag, cpucfg, CPUCFG_GENCTL);
	for (i = 1; i < mp_ncpus; i++)
		val &= ~(1 << i);
	FUNC7(fdtbus_bs_tag, cpucfg, CPUCFG_GENCTL, val);

	/* Set DBGPWRDUP low */
	val = FUNC5(fdtbus_bs_tag, cpucfg, CPUCFG_DBGCTL1);
	for (i = 1; i < mp_ncpus; i++)
		val &= ~(1 << i);
	FUNC7(fdtbus_bs_tag, cpucfg, CPUCFG_DBGCTL1, val);

	/* Release power clamp */
	for (i = 1; i < mp_ncpus; i++)
		for (j = 0; j <= CPU_PWR_CLAMP_STEPS; j++) {
			if (soc_family != ALLWINNERSOC_SUN7I) {
				FUNC7(fdtbus_bs_tag, prcm,
				    FUNC0(i), 0xff >> j);
			} else {
				FUNC7(fdtbus_bs_tag,
				    cpucfg, A20_CPU1_PWR_CLAMP, 0xff >> j);
			}
		}
	FUNC2(10000);

	/* Clear power-off gating */
	if (soc_family != ALLWINNERSOC_SUN7I) {
		val = FUNC5(fdtbus_bs_tag, prcm, CPU_PWROFF);
		for (i = 0; i < mp_ncpus; i++)
			val &= ~(1 << i);
		FUNC7(fdtbus_bs_tag, prcm, CPU_PWROFF, val);
	} else {
		val = FUNC5(fdtbus_bs_tag,
		    cpucfg, A20_CPU1_PWROFF_REG);
		val &= ~(1 << 0);
		FUNC7(fdtbus_bs_tag, cpucfg,
		    A20_CPU1_PWROFF_REG, val);
	}
	FUNC2(1000);

	/* De-assert cpu core reset */
	for (i = 1; i < mp_ncpus; i++)
		FUNC7(fdtbus_bs_tag, cpucfg, FUNC1(i),
		    CPU_RESET | CPU_CORE_RESET);

	/* Assert DBGPWRDUP signal */
	val = FUNC5(fdtbus_bs_tag, cpucfg, CPUCFG_DBGCTL1);
	for (i = 1; i < mp_ncpus; i++)
		val |= (1 << i);
	FUNC7(fdtbus_bs_tag, cpucfg, CPUCFG_DBGCTL1, val);

	FUNC9();
	FUNC12();
	FUNC6(fdtbus_bs_tag, cpucfg, CPUCFG_SIZE);
	if (soc_family != ALLWINNERSOC_SUN7I)
		FUNC6(fdtbus_bs_tag, prcm, PRCM_SIZE);
}