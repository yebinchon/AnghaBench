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
struct dmamux_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/ * bsh; int /*<<< orphan*/ * bst; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dmamux_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct dmamux_softc* dmamux_sc ; 
 int /*<<< orphan*/  dmamux_spec ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct dmamux_softc *sc;
	int i;

	sc = FUNC1(dev);

	if (FUNC0(dev, dmamux_spec, sc->res)) {
		FUNC2(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	for (i = 0; i < 4; i++) {
		sc->bst[i] = FUNC4(sc->res[i]);
		sc->bsh[i] = FUNC3(sc->res[i]);
	}

	dmamux_sc = sc;

	return (0);
}