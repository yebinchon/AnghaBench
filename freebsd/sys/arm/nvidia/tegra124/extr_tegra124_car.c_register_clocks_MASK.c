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
struct tegra124_car_softc {int /*<<< orphan*/ * clkdom; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tegra124_car_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra124_car_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra124_car_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra124_car_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tegra124_car_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct tegra124_car_softc*) ; 
 int /*<<< orphan*/  tegra124_div_clks ; 
 int /*<<< orphan*/  tegra124_fixed_clks ; 
 int /*<<< orphan*/  tegra124_gate_clks ; 
 int /*<<< orphan*/  FUNC13 (struct tegra124_car_softc*) ; 
 int /*<<< orphan*/  tegra124_mux_clks ; 
 int /*<<< orphan*/  FUNC14 (struct tegra124_car_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct tegra124_car_softc*) ; 

__attribute__((used)) static void
FUNC16(device_t dev)
{
	struct tegra124_car_softc *sc;

	sc = FUNC5(dev);
	sc->clkdom = FUNC0(dev);
	if (sc->clkdom == NULL)
		FUNC11("clkdom == NULL");

	FUNC13(sc);
	FUNC7(sc, tegra124_fixed_clks, FUNC10(tegra124_fixed_clks));
	FUNC9(sc, tegra124_mux_clks, FUNC10(tegra124_mux_clks));
	FUNC6(sc, tegra124_div_clks, FUNC10(tegra124_div_clks));
	FUNC8(sc, tegra124_gate_clks, FUNC10(tegra124_gate_clks));
	FUNC14(sc);
	FUNC15(sc);
	FUNC2(sc->clkdom);
	FUNC4(sc->clkdom);
	FUNC12(sc);
	FUNC3(sc->clkdom);
	if (bootverbose)
		FUNC1(sc->clkdom);
}