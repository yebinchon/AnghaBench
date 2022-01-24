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
struct tegra124_cpufreq_softc {int /*<<< orphan*/  clk_dfll; int /*<<< orphan*/  clk_pll_p; int /*<<< orphan*/  dev; int /*<<< orphan*/  clk_pll_x; int /*<<< orphan*/  clk_cpu_lp; int /*<<< orphan*/  clk_cpu_g; int /*<<< orphan*/  supply_vdd_cpu; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct tegra124_cpufreq_softc *sc, phandle_t node)
{
	int rv;
	device_t parent_dev;

	parent_dev =  FUNC1(sc->dev);
	rv = FUNC3(parent_dev, 0, "vdd-cpu-supply",
	    &sc->supply_vdd_cpu);
	if (rv != 0) {
		FUNC2(sc->dev, "Cannot get 'vdd-cpu' regulator\n");
		return (rv);
	}

	rv = FUNC0(parent_dev, 0, "cpu_g", &sc->clk_cpu_g);
	if (rv != 0) {
		FUNC2(sc->dev, "Cannot get 'cpu_g' clock: %d\n", rv);
		return (ENXIO);
	}

	rv = FUNC0(parent_dev, 0, "cpu_lp", &sc->clk_cpu_lp);
	if (rv != 0) {
		FUNC2(sc->dev, "Cannot get 'cpu_lp' clock\n");
		return (ENXIO);
	}

	rv = FUNC0(parent_dev, 0, "pll_x", &sc->clk_pll_x);
	if (rv != 0) {
		FUNC2(sc->dev, "Cannot get 'pll_x' clock\n");
		return (ENXIO);
	}
	rv = FUNC0(parent_dev, 0, "pll_p", &sc->clk_pll_p);
	if (rv != 0) {
		FUNC2(parent_dev, "Cannot get 'pll_p' clock\n");
		return (ENXIO);
	}
	rv = FUNC0(parent_dev, 0, "dfll", &sc->clk_dfll);
	if (rv != 0) {
		/* XXX DPLL is not implemented yet */
/*
		device_printf(sc->dev, "Cannot get 'dfll' clock\n");
		return (ENXIO);
*/
	}
	return (0);
}