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
struct rk_pinctrl_softc {int /*<<< orphan*/ * dev; struct rk_pinctrl_conf* conf; int /*<<< orphan*/  pmu; int /*<<< orphan*/  grf; } ;
struct rk_pinctrl_conf {int dummy; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,char*,void**) ; 
 scalar_t__ FUNC2 (scalar_t__,char*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compat_data ; 
 struct rk_pinctrl_softc* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (scalar_t__,char*) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct rk_pinctrl_softc*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (char**,char*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,scalar_t__,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC20(device_t dev)
{
	struct rk_pinctrl_softc *sc;
	phandle_t node;
	device_t cdev;
	char *gpio_name, *eptr;
	int rv;

	sc = FUNC7(dev);
	sc->dev = dev;

	node = FUNC12(dev);

	if (FUNC2(node, "rockchip,grf") &&
	    FUNC19(dev, node,
	    "rockchip,grf", &sc->grf) != 0) {
		FUNC8(dev, "cannot get grf driver handle\n");
		return (ENXIO);
	}

	/* RK3399,RK3288 has banks in PMU. RK3328 does not have a PMU. */
	if (FUNC13(node, "rockchip,rk3399-pinctrl") ||
	    FUNC13(node, "rockchip,rk3288-pinctrl")) {
		if (FUNC2(node, "rockchip,pmu") &&
		    FUNC19(dev, node,
		    "rockchip,pmu", &sc->pmu) != 0) {
			FUNC8(dev, "cannot get pmu driver handle\n");
			return (ENXIO);
		}
	}

	sc->conf = (struct rk_pinctrl_conf *)FUNC14(dev,
	    compat_data)->ocd_data;

	FUNC11(dev, "rockchip,pins");

	FUNC17(dev, node);

	FUNC6(dev);

	/* Attach child devices */
	for (node = FUNC0(node); node > 0; node = FUNC3(node)) {
		if (!FUNC13(node, "rockchip,gpio-bank"))
			continue;

		rv = FUNC1(node, "name", (void **)&gpio_name);
		if (rv <= 0) {
			FUNC8(sc->dev, "Cannot GPIO subdevice name.\n");
			continue;
		}

		cdev = FUNC16(dev, node, 0, NULL, -1, NULL);
		if (cdev == NULL) {
			FUNC8(dev, " Cannot add GPIO subdevice: %s\n",
			    gpio_name);
			FUNC4(gpio_name);
			continue;
		}

		rv = FUNC9(cdev);
		if (rv != 0) {
			FUNC8(sc->dev,
			    "Cannot attach GPIO subdevice: %s\n", gpio_name);
			FUNC4(gpio_name);
			continue;
		}

		/* Grep device name from name property */
		eptr = gpio_name;
		FUNC18(&eptr, "@");
		if (gpio_name == eptr) {
			FUNC8(sc->dev,
			    "Unrecognized format of GPIO subdevice name: %s\n",
			    gpio_name);
			FUNC4(gpio_name);
			continue;
		}
		rv =  FUNC15(sc, gpio_name, cdev);
		if (rv != 0) {
			FUNC8(sc->dev,
			    "Cannot register GPIO subdevice %s: %d\n",
			    gpio_name, rv);
			FUNC4(gpio_name);
			continue;
		}
		FUNC4(gpio_name);
	}

	FUNC10(dev);

	return (FUNC5(dev));
}