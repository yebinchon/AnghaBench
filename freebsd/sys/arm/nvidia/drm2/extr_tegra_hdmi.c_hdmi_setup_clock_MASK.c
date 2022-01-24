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
typedef  int uint64_t ;
struct tegra_drm_encoder {int /*<<< orphan*/  dev; } ;
struct hdmi_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  clk_hdmi; int /*<<< orphan*/  clk_parent; } ;
typedef  int /*<<< orphan*/  clk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int HDMI_DC_CLOCK_MULTIPIER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hdmi_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC8(struct tegra_drm_encoder *output, clk_t clk, uint64_t pclk)
{
	struct hdmi_softc *sc;
	uint64_t freq;
	int rv;

	sc = FUNC6(output->dev);

	/* Disable consumers clock for while. */
	rv = FUNC1(sc->clk_hdmi);
	if (rv != 0) {
		FUNC7(sc->dev, "Cannot disable 'hdmi' clock\n");
		return (rv);
	}
	rv = FUNC1(clk);
	if (rv != 0) {
		FUNC7(sc->dev, "Cannot disable display clock\n");
		return (rv);
	}

	/* Set frequency  for Display Controller PLL. */
	freq = HDMI_DC_CLOCK_MULTIPIER * pclk;
	rv = FUNC4(sc->clk_parent, freq, 0);
	if (rv != 0) {
		FUNC7(output->dev,
		    "Cannot set display pixel frequency\n");
		return (rv);
	}

	/* Reparent display controller */
	rv = FUNC5(clk, sc->clk_parent);
	if (rv != 0) {
		FUNC7(output->dev, "Cannot set parent clock\n");
		return (rv);

	}
	rv = FUNC4(clk, freq, 0);
	if (rv != 0) {
		FUNC7(output->dev,
		    "Cannot set display controller frequency\n");
		return (rv);
	}
	rv = FUNC4(sc->clk_hdmi, pclk, 0);
	if (rv != 0) {
		FUNC7(output->dev,
		    "Cannot set display controller frequency\n");
		return (rv);
	}

	/* And reenable consumers clock. */
	rv = FUNC2(clk);
	if (rv != 0) {
		FUNC7(sc->dev, "Cannot enable display clock\n");
		return (rv);
	}
	rv = FUNC2(sc->clk_hdmi);
	if (rv != 0) {
		FUNC7(sc->dev, "Cannot enable 'hdmi' clock\n");
		return (rv);
	}

	rv = FUNC3(clk, &freq);
	if (rv != 0) {
		FUNC7(output->dev,
		    "Cannot get display controller frequency\n");
		return (rv);
	}

	FUNC0("DC frequency: %llu\n", freq);

	return (0);
}