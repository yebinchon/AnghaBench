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
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int CPU_PWR_CLAMP_STEPS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 

__attribute__((used)) static void
FUNC7(bus_space_handle_t cpuscfg, bus_space_handle_t cpuxcfg,
    bus_space_handle_t prcm, int cluster, int cpu)
{
	uint32_t val;
	int i;

	/* Assert core reset */
	val = FUNC5(fdtbus_bs_tag, cpuxcfg, FUNC2(cluster));
	val &= ~(1 << cpu);
	FUNC6(fdtbus_bs_tag, cpuxcfg, FUNC2(cluster), val);

	/* Assert power-on reset */
	val = FUNC5(fdtbus_bs_tag, cpuscfg, FUNC0(cluster));
	val &= ~(1 << cpu);
	FUNC6(fdtbus_bs_tag, cpuscfg, FUNC0(cluster), val);

	/* Disable automatic L1 cache invalidate at reset */
	val = FUNC5(fdtbus_bs_tag, cpuxcfg, FUNC1(cluster));
	val &= ~(1 << cpu);
	FUNC6(fdtbus_bs_tag, cpuxcfg, FUNC1(cluster), val);

	/* Release power clamp */
	for (i = 0; i <= CPU_PWR_CLAMP_STEPS; i++)
		FUNC6(fdtbus_bs_tag, prcm,
		    FUNC4(cluster, cpu), 0xff >> i);
	while (FUNC5(fdtbus_bs_tag, prcm,
	    FUNC4(cluster, cpu)) != 0)
		;

	/* Clear power-off gating */
	val = FUNC5(fdtbus_bs_tag, prcm, FUNC3(cluster));
	val &= ~(1 << cpu);
	FUNC6(fdtbus_bs_tag, prcm, FUNC3(cluster), val);

	/* De-assert power-on reset */
	val = FUNC5(fdtbus_bs_tag, cpuscfg, FUNC0(cluster));
	val |= (1 << cpu);
	FUNC6(fdtbus_bs_tag, cpuscfg, FUNC0(cluster), val);

	/* De-assert core reset */
	val = FUNC5(fdtbus_bs_tag, cpuxcfg, FUNC2(cluster));
	val |= (1 << cpu);
	FUNC6(fdtbus_bs_tag, cpuxcfg, FUNC2(cluster), val);
}