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
typedef  int /*<<< orphan*/  uint32_t ;
struct bcm_gpio_softc {int sc_gpio_npins; TYPE_1__* sc_gpio_pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  gp_flags; int /*<<< orphan*/  gp_pin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_gpio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bcm_gpio_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(device_t dev, uint32_t pin, uint32_t nfunc)
{
	struct bcm_gpio_softc *sc;
	int i;

	sc = FUNC4(dev);
	FUNC0(sc);

	/* Set the pin function. */
	FUNC3(sc, pin, nfunc);

	/* Update the pin flags. */
	for (i = 0; i < sc->sc_gpio_npins; i++) {
		if (sc->sc_gpio_pins[i].gp_pin == pin)
			break;
	}
	if (i < sc->sc_gpio_npins)
		sc->sc_gpio_pins[i].gp_flags = FUNC2(nfunc);

        FUNC1(sc);
}