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
struct tegra124_pmc_softc {int /*<<< orphan*/  dev; } ;
typedef  enum tegra_powergate_id { ____Placeholder_tegra_powergate_id } tegra_powergate_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra124_pmc_softc*) ; 
 int /*<<< orphan*/  PMC_PWRGATE_STATUS ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  PMC_PWRGATE_TOGGLE ; 
 int FUNC3 (int) ; 
 int PMC_PWRGATE_TOGGLE_START ; 
 int /*<<< orphan*/  FUNC4 (struct tegra124_pmc_softc*) ; 
 int FUNC5 (struct tegra124_pmc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra124_pmc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC8(struct tegra124_pmc_softc *sc,
    enum tegra_powergate_id id, int ena)
{
	uint32_t reg;
	int i;

	FUNC1(sc);

	reg = FUNC5(sc, PMC_PWRGATE_STATUS) & FUNC2(id);
	if (((reg != 0) && ena) || ((reg == 0) && !ena)) {
		FUNC4(sc);
		return (0);
	}

	for (i = 100; i > 0; i--) {
		reg = FUNC5(sc, PMC_PWRGATE_TOGGLE);
		if ((reg & PMC_PWRGATE_TOGGLE_START) == 0)
			break;
		FUNC0(1);
	}
	if (i <= 0)
		FUNC7(sc->dev,
		    "Timeout when waiting for TOGGLE_START\n");

	FUNC6(sc, PMC_PWRGATE_TOGGLE,
	    PMC_PWRGATE_TOGGLE_START | FUNC3(id));

	for (i = 100; i > 0; i--) {
		reg = FUNC5(sc, PMC_PWRGATE_TOGGLE);
		if ((reg & PMC_PWRGATE_TOGGLE_START) == 0)
			break;
		FUNC0(1);
	}
	if (i <= 0)
		FUNC7(sc->dev,
		    "Timeout when waiting for TOGGLE_START\n");
		FUNC4(sc);
	return (0);
}