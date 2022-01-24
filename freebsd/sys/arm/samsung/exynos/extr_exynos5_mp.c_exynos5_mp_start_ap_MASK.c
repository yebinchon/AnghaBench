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
typedef  int /*<<< orphan*/  platform_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CORE_PWR_EN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ EXYNOS5420_SOC_ID ; 
 int EXYNOS5420_SYSRAM_NS ; 
 int EXYNOS_PMU_BASE ; 
 int EXYNOS_SYSRAM ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 int mp_ncpus ; 
 scalar_t__ mpentry ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 

void
FUNC14(platform_t plat)
{
	bus_addr_t sysram, pmu;
	int err, i, j;
	int status;
	int reg;

	err = FUNC3(fdtbus_bs_tag, EXYNOS_PMU_BASE, 0x20000, 0, &pmu);
	if (err != 0)
		FUNC10("Couldn't map pmu\n");

	if (FUNC9() == EXYNOS5420_SOC_ID)
		reg = EXYNOS5420_SYSRAM_NS;
	else
		reg = EXYNOS_SYSRAM;

	err = FUNC3(fdtbus_bs_tag, reg, 0x100, 0, &sysram);
	if (err != 0)
		FUNC10("Couldn't map sysram\n");

	/* Give power to CPUs */
	for (i = 1; i < mp_ncpus; i++) {
		FUNC6(fdtbus_bs_tag, pmu, FUNC0(i),
		    CORE_PWR_EN);

		for (j = 10; j >= 0; j--) {
			status = FUNC4(fdtbus_bs_tag, pmu,
			    FUNC1(i));
			if ((status & CORE_PWR_EN) == CORE_PWR_EN)
				break;
			FUNC2(10);
			if (j == 0)
				FUNC12("Can't power on CPU%d\n", i);
		}
	}

	FUNC6(fdtbus_bs_tag, sysram, 0x0,
	    FUNC11((vm_offset_t)mpentry));

	FUNC7();

	FUNC8();
	FUNC13();
	FUNC5(fdtbus_bs_tag, sysram, 0x100);
	FUNC5(fdtbus_bs_tag, pmu, 0x20000);
}