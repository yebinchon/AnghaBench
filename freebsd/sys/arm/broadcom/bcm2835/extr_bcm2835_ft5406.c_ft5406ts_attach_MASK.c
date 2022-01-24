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
struct TYPE_2__ {struct ft5406ts_softc* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct ft5406ts_softc {TYPE_1__ sc_init_hook; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct ft5406ts_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ft5406ts_softc*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 struct ft5406ts_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ft5406ts_init ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct ft5406ts_softc *sc;

	/* set self dev */
	sc = FUNC3(dev);
	sc->sc_dev = dev;

	/* register callback for using mbox when interrupts are enabled */
	sc->sc_init_hook.ich_func = ft5406ts_init;
	sc->sc_init_hook.ich_arg = sc;

	FUNC1(sc);

	if (FUNC2(&sc->sc_init_hook) != 0) {
		FUNC4(dev, "config_intrhook_establish failed\n");
		FUNC0(sc);
		return (ENOMEM);
	}

	return (0);
}