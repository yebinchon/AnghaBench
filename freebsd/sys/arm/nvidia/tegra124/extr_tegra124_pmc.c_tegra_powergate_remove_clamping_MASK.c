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
 int /*<<< orphan*/  PMC_CLAMP_STATUS ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  PMC_GPU_RG_CNTRL ; 
 int /*<<< orphan*/  PMC_PWRGATE_STATUS ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  PMC_REMOVE_CLAMPING_CMD ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct tegra124_pmc_softc*,int /*<<< orphan*/ ) ; 
 int TEGRA_POWERGATE_3D ; 
 int TEGRA_POWERGATE_PCX ; 
 int TEGRA_POWERGATE_VDE ; 
 int /*<<< orphan*/  FUNC5 (struct tegra124_pmc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 struct tegra124_pmc_softc* FUNC8 () ; 

int
FUNC9(enum tegra_powergate_id  id)
{
	struct tegra124_pmc_softc *sc;
	uint32_t reg;
	enum tegra_powergate_id swid;
	int i;

	sc = FUNC8();

	if (id == TEGRA_POWERGATE_3D) {
		FUNC5(sc, PMC_GPU_RG_CNTRL, 0);
		return (0);
	}

	reg = FUNC4(sc, PMC_PWRGATE_STATUS);
	if ((reg & FUNC2(id)) == 0)
		FUNC7("Attempt to remove clamping for unpowered partition.\n");

	if (id == TEGRA_POWERGATE_PCX)
		swid = TEGRA_POWERGATE_VDE;
	else if (id == TEGRA_POWERGATE_VDE)
		swid = TEGRA_POWERGATE_PCX;
	else
		swid = id;
	FUNC5(sc, PMC_REMOVE_CLAMPING_CMD, FUNC3(swid));

	for (i = 100; i > 0; i--) {
		reg = FUNC4(sc, PMC_REMOVE_CLAMPING_CMD);
		if ((reg & FUNC3(swid)) == 0)
			break;
		FUNC0(1);
	}
	if (i <= 0)
		FUNC6(sc->dev, "Timeout when remove clamping\n");

	reg = FUNC4(sc, PMC_CLAMP_STATUS);
	if ((reg & FUNC1(id)) != 0)
		FUNC7("Cannot remove clamping\n");

	return (0);
}