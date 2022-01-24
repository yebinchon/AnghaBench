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
struct as3722_softc {int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * irq_h; int /*<<< orphan*/  dev; int /*<<< orphan*/  bus_addr; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  FUNC0 (struct as3722_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct as3722_softc*) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int FUNC2 (struct as3722_softc*) ; 
 int FUNC3 (struct as3722_softc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct as3722_softc*) ; 
 int /*<<< orphan*/  as3722_intr ; 
 int FUNC5 (struct as3722_softc*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct as3722_softc*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct as3722_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct as3722_softc*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 struct as3722_softc* FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(device_t dev)
{
	struct as3722_softc *sc;
	const char *dname;
	int dunit, rv, rid;
	phandle_t node;

	sc = FUNC14(dev);
	sc->dev = dev;
	sc->bus_addr = FUNC19(dev);
	node = FUNC20(sc->dev);
	dname = FUNC13(dev);
	dunit = FUNC15(dev);
	rv = 0;
	FUNC1(sc);

	rid = 0;
	sc->irq_res = FUNC8(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (sc->irq_res == NULL) {
		FUNC16(dev, "Cannot allocate interrupt.\n");
		rv = ENXIO;
		goto fail;
	}

	rv = FUNC5(sc, node);
	if (rv != 0)
		goto fail;
	rv = FUNC2(sc);
	if (rv != 0)
		goto fail;
	rv = FUNC4(sc);
	if (rv != 0)
		goto fail;
	rv = FUNC6(sc, node);
	if (rv != 0)
		goto fail;
	rv = FUNC3(sc, node);
	if (rv != 0)
		goto fail;
	rv = FUNC7(sc, node);
	if (rv != 0)
		goto fail;

	FUNC18(dev, NULL);
	FUNC17(dev, "default");

	/* Setup  interrupt. */
	rv = FUNC11(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, as3722_intr, sc, &sc->irq_h);
	if (rv) {
		FUNC16(dev, "Cannot setup interrupt.\n");
		goto fail;
	}
	return (FUNC9(dev));

fail:
	if (sc->irq_h != NULL)
		FUNC12(dev, sc->irq_res, sc->irq_h);
	if (sc->irq_res != NULL)
		FUNC10(dev, SYS_RES_IRQ, 0, sc->irq_res);
	FUNC0(sc);
	return (rv);
}