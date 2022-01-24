#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct tegra124_cpufreq_softc {size_t speedo_id; int /*<<< orphan*/  act_speed_point; void* cpu_max_freq; int /*<<< orphan*/  clk_cpu_g; int /*<<< orphan*/  node; int /*<<< orphan*/ * cpu_def; int /*<<< orphan*/  speedo_value; int /*<<< orphan*/  process_id; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {size_t cpu_speedo_id; int /*<<< orphan*/  cpu_speedo_value; int /*<<< orphan*/  cpu_process_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tegra124_cpufreq_softc*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void** cpu_max_freq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct tegra124_cpufreq_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct tegra124_cpufreq_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra124_cpufreq_softc*,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (void**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct tegra124_cpufreq_softc*,int) ; 
 int /*<<< orphan*/  tegra124_cpu_volt_dpll_def ; 
 int /*<<< orphan*/  tegra124_cpu_volt_pllx_def ; 
 TYPE_1__ tegra_sku_info ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct tegra124_cpufreq_softc *sc;
	uint64_t freq;
	int rv;

	sc = FUNC4(dev);
	sc->dev = dev;
	sc->node = FUNC9(FUNC3(dev));

	sc->process_id = tegra_sku_info.cpu_process_id;
	sc->speedo_id = tegra_sku_info.cpu_speedo_id;
	sc->speedo_value = tegra_sku_info.cpu_speedo_value;

	/* Tegra 124 */
	/* XXX DPLL is not implemented yet */
	if (1)
		sc->cpu_def = &tegra124_cpu_volt_pllx_def;
	else
		sc->cpu_def = &tegra124_cpu_volt_dpll_def;


	rv = FUNC6(sc, sc->node);
	if (rv !=  0) {
		return (rv);
	}

	FUNC0(sc);

	rv = FUNC1(sc->clk_cpu_g, &freq);
	if (rv != 0) {
		FUNC5(dev, "Can't get CPU clock frequency\n");
		return (rv);
	}
	if (sc->speedo_id < FUNC8(cpu_max_freq))
		sc->cpu_max_freq = cpu_max_freq[sc->speedo_id];
	else
		sc->cpu_max_freq = cpu_max_freq[0];
	sc->act_speed_point = FUNC7(sc, freq);

	/* Set safe startup CPU frequency. */
	rv = FUNC10(sc, 1632000000);
	if (rv != 0) {
		FUNC5(dev, "Can't set initial CPU clock frequency\n");
		return (rv);
	}

	/* This device is controlled by cpufreq(4). */
	FUNC2(dev);

	return (0);
}