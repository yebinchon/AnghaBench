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
struct tegra124_pmc_softc {int /*<<< orphan*/  dev; } ;
typedef  enum tegra_powergate_id { ____Placeholder_tegra_powergate_id } tegra_powergate_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct tegra124_pmc_softc* FUNC2 () ; 
 int FUNC3 (struct tegra124_pmc_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int
FUNC5(enum tegra_powergate_id id)
{
	struct tegra124_pmc_softc *sc;
	int rv, i;

	sc = FUNC2();

	rv = FUNC3(sc, id, 0);
	if (rv != 0) {
		FUNC1(sc->dev, "Cannot set powergate: %d\n", id);
		return (rv);
	}
	for (i = 100; i > 0; i--) {
		if (!FUNC4(id))
			break;
		FUNC0(1);
	}
	if (i <= 0)
		FUNC1(sc->dev, "Timeout when waiting on power off\n");

	return (rv);
}