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
struct port_softc {int /*<<< orphan*/ * gpio_ih; int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_MISC ; 
 int NPORTS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct port_softc*,int /*<<< orphan*/ *) ; 
 struct port_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  port_intr ; 
 struct port_softc* port_sc ; 
 int /*<<< orphan*/  port_spec ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct port_softc *sc;
	int irq;

	sc = FUNC2(dev);

	if (FUNC0(dev, port_spec, sc->res)) {
		FUNC3(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC5(sc->res[0]);
	sc->bsh = FUNC4(sc->res[0]);

	port_sc = sc;

	for (irq = 0; irq < NPORTS; irq ++) {
		if ((FUNC1(dev, sc->res[1 + irq], INTR_TYPE_MISC,
		    port_intr, NULL, sc, &sc->gpio_ih[irq]))) {
			FUNC3(dev,
			    "ERROR: Unable to register interrupt handler\n");
			return (ENXIO);
		}
	}

	return (0);
}