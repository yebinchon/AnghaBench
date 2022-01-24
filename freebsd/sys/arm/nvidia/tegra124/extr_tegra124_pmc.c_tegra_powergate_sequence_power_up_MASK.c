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
typedef  int /*<<< orphan*/  hwreset_t ;
typedef  enum tegra_powergate_id { ____Placeholder_tegra_powergate_id } tegra_powergate_id ;
typedef  int /*<<< orphan*/  clk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct tegra124_pmc_softc* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 

int
FUNC11(enum tegra_powergate_id id, clk_t clk,
    hwreset_t rst)
{
	struct tegra124_pmc_softc *sc;
	int rv;

	sc = FUNC7();

	rv = FUNC5(rst);
	if (rv != 0) {
		FUNC4(sc->dev, "Cannot assert reset\n");
		return (rv);
	}

	rv = FUNC3(clk);
	if (rv != 0) {
		FUNC4(sc->dev, "Cannot stop clock\n");
		goto clk_fail;
	}

	rv = FUNC9(id);
	if (rv != 0) {
		FUNC4(sc->dev, "Cannot power on powergate\n");
		goto clk_fail;
	}

	rv = FUNC2(clk);
	if (rv != 0) {
		FUNC4(sc->dev, "Cannot enable clock\n");
		goto clk_fail;
	}
	FUNC0(20);

	rv = FUNC10(id);
	if (rv != 0) {
		FUNC4(sc->dev, "Cannot remove clamping\n");
		goto fail;
	}
	rv = FUNC6(rst);
	if (rv != 0) {
		FUNC4(sc->dev, "Cannot unreset reset\n");
		goto fail;
	}
	return 0;

fail:
	FUNC1(clk);
clk_fail:
	FUNC5(rst);
	FUNC8(id);
	return (rv);
}