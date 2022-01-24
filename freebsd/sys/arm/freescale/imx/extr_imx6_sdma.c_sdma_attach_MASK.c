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
struct sdma_softc {int /*<<< orphan*/  ih; int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int FUNC0 (struct sdma_softc*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sdma_softc*,int /*<<< orphan*/ *) ; 
 struct sdma_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct sdma_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdma_intr ; 
 struct sdma_softc* sdma_sc ; 
 int /*<<< orphan*/  sdma_spec ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct sdma_softc *sc;
	int err;

	sc = FUNC3(dev);
	sc->dev = dev;

	if (FUNC1(dev, sdma_spec, sc->res)) {
		FUNC4(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC7(sc->res[0]);
	sc->bsh = FUNC6(sc->res[0]);

	sdma_sc = sc;

	/* Setup interrupt handler */
	err = FUNC2(dev, sc->res[1], INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, sdma_intr, sc, &sc->ih);
	if (err) {
		FUNC4(dev, "Unable to alloc interrupt resource.\n");
		return (ENXIO);
	}

	if (FUNC5(sc) == -1)
		return (ENXIO);

	if (FUNC0(sc) == -1)
		return (ENXIO);

	return (0);
}