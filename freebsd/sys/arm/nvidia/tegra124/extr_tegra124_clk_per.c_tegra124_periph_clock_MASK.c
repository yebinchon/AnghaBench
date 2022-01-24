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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * periph_def ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pgate_def ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC4(struct tegra124_car_softc *sc)
{
	int i, rv;

	for (i = 0; i <  FUNC0(periph_def); i++) {
		rv = FUNC2(sc->clkdom, &periph_def[i]);
		if (rv != 0)
			FUNC1("tegra124_periph_register failed");
	}
	for (i = 0; i <  FUNC0(pgate_def); i++) {
		rv = FUNC3(sc->clkdom, &pgate_def[i]);
		if (rv != 0)
			FUNC1("tegra124_pgate_register failed");
	}

}