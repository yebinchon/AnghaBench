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
struct tegra124_cpufreq_softc {int /*<<< orphan*/ * clk_dfll; int /*<<< orphan*/ * clk_pll_p; int /*<<< orphan*/ * clk_pll_x; int /*<<< orphan*/ * clk_cpu_lp; int /*<<< orphan*/ * clk_cpu_g; int /*<<< orphan*/ * supply_vdd_cpu; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct tegra124_cpufreq_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct tegra124_cpufreq_softc *sc;

	sc = FUNC2(dev);
	FUNC1(dev);

	if (sc->supply_vdd_cpu != NULL)
		FUNC3(sc->supply_vdd_cpu);

	if (sc->clk_cpu_g != NULL)
		FUNC0(sc->clk_cpu_g);
	if (sc->clk_cpu_lp != NULL)
		FUNC0(sc->clk_cpu_lp);
	if (sc->clk_pll_x != NULL)
		FUNC0(sc->clk_pll_x);
	if (sc->clk_pll_p != NULL)
		FUNC0(sc->clk_pll_p);
	if (sc->clk_dfll != NULL)
		FUNC0(sc->clk_dfll);
	return (0);
}