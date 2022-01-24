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
struct aml8726_gpio_softc {int npins; int /*<<< orphan*/ * res; int /*<<< orphan*/ * busdev; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  prop ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aml8726_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_gpio_softc*) ; 
 int ENXIO ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  aml8726_gpio_spec ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct aml8726_gpio_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct aml8726_gpio_softc *sc = FUNC5(dev);
	phandle_t node;
	pcell_t prop;

	sc->dev = dev;

	node = FUNC8(dev);

	if (FUNC2(node, "pin-count",
	    &prop, sizeof(prop)) <= 0) {
		FUNC6(dev, "missing pin-count attribute in FDT\n");
		return (ENXIO);
	}
	sc->npins = prop;

	if (sc->npins > 32)
		return (ENXIO);

	if (FUNC3(dev, aml8726_gpio_spec, sc->res)) {
		FUNC6(dev, "can not allocate resources for device\n");
		return (ENXIO);
	}

	/*
	 * The GPIOAO OUT bits occupy the upper word of the OEN register.
	 */
	if (FUNC9(sc->res[1]) == FUNC9(sc->res[0]))
	  if (sc->npins > 16) {
		FUNC6(dev,
		    "too many pins for overlapping OEN and OUT\n");
		FUNC4(dev, aml8726_gpio_spec, sc->res);
		return (ENXIO);
		}

	FUNC1(sc);

	sc->busdev = FUNC7(dev);
	if (sc->busdev == NULL) {
		FUNC0(sc);
		FUNC4(dev, aml8726_gpio_spec, sc->res);
		return (ENXIO);
	}

	return (0);
}