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
struct TYPE_2__ {int /*<<< orphan*/  ich_arg; int /*<<< orphan*/  ich_func; } ;
struct a10hdmi_softc {TYPE_1__ mode_hook; int /*<<< orphan*/  clk_ahb; int /*<<< orphan*/  clk_hdmi; int /*<<< orphan*/  clk_lcd; int /*<<< orphan*/  res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  a10hdmi_hpd ; 
 int /*<<< orphan*/  FUNC0 (struct a10hdmi_softc*) ; 
 int /*<<< orphan*/  a10hdmi_spec ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*) ; 
 struct a10hdmi_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct a10hdmi_softc *sc;
	int error;

	sc = FUNC5(dev);

	if (FUNC1(dev, a10hdmi_spec, &sc->res)) {
		FUNC6(dev, "cannot allocate resources for device\n");
		return (ENXIO);
	}

	/* Setup clocks */
	error = FUNC3(dev, 0, "ahb", &sc->clk_ahb);
	if (error != 0) {
		FUNC6(dev, "cannot find ahb clock\n");
		return (error);
	}
	error = FUNC3(dev, 0, "hdmi", &sc->clk_hdmi);
	if (error != 0) {
		FUNC6(dev, "cannot find hdmi clock\n");
		return (error);
	}
	error = FUNC3(dev, 0, "lcd", &sc->clk_lcd);
	if (error != 0) {
		FUNC6(dev, "cannot find lcd clock\n");
	}
	/* Enable HDMI clock */
	error = FUNC2(sc->clk_hdmi);
	if (error != 0) {
		FUNC6(dev, "cannot enable hdmi clock\n");
		return (error);
	}
	/* Gating AHB clock for HDMI */
	error = FUNC2(sc->clk_ahb);
	if (error != 0) {
		FUNC6(dev, "cannot enable ahb gate\n");
		return (error);
	}

	FUNC0(sc);

	sc->mode_hook.ich_func = a10hdmi_hpd;
	sc->mode_hook.ich_arg = dev;

	error = FUNC4(&sc->mode_hook);
	if (error != 0)
		return (error);

	return (0);
}