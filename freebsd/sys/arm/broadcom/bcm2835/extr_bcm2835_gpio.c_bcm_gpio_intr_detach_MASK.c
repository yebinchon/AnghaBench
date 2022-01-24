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
struct bcm_gpio_softc {int /*<<< orphan*/ ** sc_intrhand; int /*<<< orphan*/ * sc_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct bcm_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev)
{
	struct bcm_gpio_softc *sc;

	sc = FUNC2(dev);
	if (sc->sc_intrhand[0] != NULL)
		FUNC1(dev, sc->sc_res[1], sc->sc_intrhand[0]);
	if (sc->sc_intrhand[1] != NULL)
		FUNC1(dev, sc->sc_res[2], sc->sc_intrhand[1]);

	FUNC0(sc);
}