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
typedef  int /*<<< orphan*/  uint64_t ;
struct tegra124_cpufreq_softc {struct cpu_speed_point* act_speed_point; int /*<<< orphan*/  supply_vdd_cpu; int /*<<< orphan*/  dev; int /*<<< orphan*/  clk_pll_x; int /*<<< orphan*/  clk_cpu_g; int /*<<< orphan*/  clk_pll_p; } ;
struct cpu_speed_point {scalar_t__ uvolt; int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SET_ROUND_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct cpu_speed_point* FUNC4 (struct tegra124_cpufreq_softc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct tegra124_cpufreq_softc *sc, uint64_t freq)
{
	struct cpu_speed_point *point;
	int rv;

	point = FUNC4(sc, freq);

	if (sc->act_speed_point->uvolt < point->uvolt) {
		/* set cpu voltage */
		rv = FUNC5(sc->supply_vdd_cpu,
		    point->uvolt, point->uvolt);
		FUNC0(10000);
		if (rv != 0)
			return (rv);
	}

	/* Switch supermux to PLLP first */
	rv = FUNC2(sc->clk_cpu_g, sc->clk_pll_p);
	if (rv != 0) {
		FUNC3(sc->dev, "Can't set parent to PLLP\n");
		return (rv);
	}

	/* Set PLLX frequency */
	rv = FUNC1(sc->clk_pll_x, point->freq, CLK_SET_ROUND_DOWN);
	if (rv != 0) {
		FUNC3(sc->dev, "Can't set CPU clock frequency\n");
		return (rv);
	}

	rv = FUNC2(sc->clk_cpu_g, sc->clk_pll_x);
	if (rv != 0) {
		FUNC3(sc->dev, "Can't set parent to PLLX\n");
		return (rv);
	}

	if (sc->act_speed_point->uvolt > point->uvolt) {
		/* set cpu voltage */
		rv = FUNC5(sc->supply_vdd_cpu,
		    point->uvolt, point->uvolt);
		if (rv != 0)
			return (rv);
	}

	sc->act_speed_point = point;

	return (0);
}