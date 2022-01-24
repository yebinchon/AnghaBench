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
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int EXYNOS5_SOC_ID_MASK ; 
 int /*<<< orphan*/  EXYNOS_CHIPID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(void)
{
	bus_addr_t chipid;
	int reg;

	if (FUNC0(fdtbus_bs_tag, EXYNOS_CHIPID,
		0x1000, 0, &chipid) != 0)
		FUNC3("Couldn't map chipid\n");
	reg = FUNC1(fdtbus_bs_tag, chipid, 0x0);
	FUNC2(fdtbus_bs_tag, chipid, 0x1000);

	return (reg & EXYNOS5_SOC_ID_MASK);
}