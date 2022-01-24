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
struct rk_dwc3_softc {int /*<<< orphan*/  sc; int /*<<< orphan*/  rst_usb3; int /*<<< orphan*/  clk_usb3; int /*<<< orphan*/  clk_axi_perf; int /*<<< orphan*/  clk_grf; int /*<<< orphan*/  clk_bus; int /*<<< orphan*/  clk_suspend; int /*<<< orphan*/  clk_ref; int /*<<< orphan*/ * dev; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct rk_dwc3_softc* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,scalar_t__,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct rk_dwc3_softc *sc;
	device_t cdev;
	phandle_t node, child;
	int err;

	sc = FUNC6(dev);
	sc->dev = dev;
	node = FUNC11(dev);

	/* Mandatory clocks */
	if (FUNC4(dev, 0, "ref_clk", &sc->clk_ref) != 0) {
		FUNC7(dev, "Cannot get ref_clk clock\n");
		return (ENXIO);
	}
	err = FUNC3(sc->clk_ref);
	if (err != 0) {
		FUNC7(dev, "Could not enable clock %s\n",
		    FUNC5(sc->clk_ref));
		return (ENXIO);
	}
	if (FUNC4(dev, 0, "suspend_clk", &sc->clk_suspend) != 0) {
		FUNC7(dev, "Cannot get suspend_clk clock\n");
		return (ENXIO);
	}
	err = FUNC3(sc->clk_suspend);
	if (err != 0) {
		FUNC7(dev, "Could not enable clock %s\n",
		    FUNC5(sc->clk_suspend));
		return (ENXIO);
	}
	if (FUNC4(dev, 0, "bus_clk", &sc->clk_bus) != 0) {
		FUNC7(dev, "Cannot get bus_clk clock\n");
		return (ENXIO);
	}
	err = FUNC3(sc->clk_bus);
	if (err != 0) {
		FUNC7(dev, "Could not enable clock %s\n",
		    FUNC5(sc->clk_bus));
		return (ENXIO);
	}
	if (FUNC4(dev, 0, "grf_clk", &sc->clk_grf) != 0) {
		FUNC7(dev, "Cannot get grf_clk clock\n");
		return (ENXIO);
	}
	err = FUNC3(sc->clk_grf);
	if (err != 0) {
		FUNC7(dev, "Could not enable clock %s\n",
		    FUNC5(sc->clk_grf));
		return (ENXIO);
	}

	/* Optional clocks */
	if (FUNC4(dev, 0, "aclk_usb3_rksoc_axi_perf", &sc->clk_axi_perf) == 0) {
		err = FUNC3(sc->clk_axi_perf);
		if (err != 0) {
			FUNC7(dev, "Could not enable clock %s\n",
			  FUNC5(sc->clk_axi_perf));
			return (ENXIO);
		}
	}
	if (FUNC4(dev, 0, "aclk_usb3", &sc->clk_usb3) == 0) {
		err = FUNC3(sc->clk_usb3);
		if (err != 0) {
			FUNC7(dev, "Could not enable clock %s\n",
			  FUNC5(sc->clk_usb3));
			return (ENXIO);
		}
	}

	/* Put module out of reset */
	if (FUNC10(dev, node, "usb3-otg", &sc->rst_usb3) == 0) {
		if (FUNC9(sc->rst_usb3) != 0) {
			FUNC7(dev, "Cannot deassert reset\n");
			return (ENXIO);
		}
	}

	FUNC14(dev, node);
	if (FUNC13(node, &sc->sc) < 0) {
		FUNC7(dev, "could not get ranges\n");
		return (ENXIO);
	}

	for (child = FUNC0(node); child > 0; child = FUNC1(child)) {
		cdev = FUNC12(dev, child, 0, NULL, -1, NULL);
		if (cdev != NULL)
			FUNC8(cdev);
	}

	return (FUNC2(dev));
}