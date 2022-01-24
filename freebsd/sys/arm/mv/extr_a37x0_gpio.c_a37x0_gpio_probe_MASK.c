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
struct a37x0_gpio_softc {int sc_type; int sc_max_pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int ocd_data; } ;

/* Variables and functions */
#define  A37X0_NB_GPIO 129 
#define  A37X0_SB_GPIO 128 
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct a37x0_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	const char *desc;
	struct a37x0_gpio_softc *sc;

	if (!FUNC0(FUNC4(dev), "gpio-controller"))
		return (ENXIO);

	sc = FUNC2(dev);
	sc->sc_type = FUNC5(
	    FUNC1(dev), compat_data)->ocd_data;
	switch (sc->sc_type) {
	case A37X0_NB_GPIO:
		sc->sc_max_pins = 36;
		desc = "Armada 37x0 North Bridge GPIO Controller";
		break;
	case A37X0_SB_GPIO:
		sc->sc_max_pins = 30;
		desc = "Armada 37x0 South Bridge GPIO Controller";
		break;
	default:
		return (ENXIO);
	}
	FUNC3(dev, desc);

	return (BUS_PROBE_DEFAULT);
}