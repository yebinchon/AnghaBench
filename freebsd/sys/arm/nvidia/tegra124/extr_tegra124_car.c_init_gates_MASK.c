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
struct clk_gate_def {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct clk_gate_def*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(struct tegra124_car_softc *sc, struct clk_gate_def *clks, int nclks)
{
	int i, rv;


	for (i = 0; i < nclks; i++) {
		rv = FUNC0(sc->clkdom, clks + i);
		if (rv != 0)
			FUNC1("clk_gate_register failed");
	}
}