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
struct a37x0_gpio_softc {scalar_t__ sc_npins; scalar_t__ sc_max_pins; int /*<<< orphan*/ * sc_busdev; int /*<<< orphan*/  syscon; } ;
typedef  scalar_t__ pcell_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,void**) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 struct a37x0_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	int err, ncells;
	pcell_t *ranges;
	struct a37x0_gpio_softc *sc;

	sc = FUNC2(dev);

	err = FUNC6(dev, &sc->syscon);
	if (err != 0) {
		FUNC3(dev, "Cannot get syscon handle from parent\n");
		return (ENXIO);
	}

	/* Read and verify the "gpio-ranges" property. */
	ncells = FUNC0(FUNC5(dev), "gpio-ranges",
	    (void **)&ranges);
	if (ncells == -1)
		return (ENXIO);
	if (ncells != sizeof(*ranges) * 4 || ranges[1] != 0 || ranges[2] != 0) {
		FUNC1(ranges);
		return (ENXIO);
	}
	sc->sc_npins = ranges[3];
	FUNC1(ranges);

	/* Check the number of pins in the DTS vs HW capabilities. */
	if (sc->sc_npins > sc->sc_max_pins)
		return (ENXIO);

	sc->sc_busdev = FUNC4(dev);
	if (sc->sc_busdev == NULL)
		return (ENXIO);

	return (0);
}