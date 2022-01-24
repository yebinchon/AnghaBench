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
struct tegra124_car_softc {int /*<<< orphan*/  clkdom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tegra124_car_softc*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ pll_clks ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC4(struct tegra124_car_softc *sc)
{
	int i, rv;

	for (i = 0; i < FUNC1(pll_clks); i++) {
		rv = FUNC3(sc->clkdom, pll_clks + i);
		if (rv != 0)
			FUNC2("pll_register failed");
	}
	FUNC0(sc);

}