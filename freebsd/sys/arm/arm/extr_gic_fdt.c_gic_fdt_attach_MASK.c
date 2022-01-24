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
struct TYPE_2__ {int /*<<< orphan*/  gic_intrhand; int /*<<< orphan*/ ** gic_res; int /*<<< orphan*/  gic_bus; } ;
struct arm_gic_fdt_softc {TYPE_1__ base; } ;
typedef  intptr_t phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GIC_BUS_FDT ; 
 scalar_t__ GIC_FIRST_SGI ; 
 scalar_t__ GIC_LAST_SGI ; 
 int /*<<< orphan*/  INTR_TYPE_CLK ; 
 int /*<<< orphan*/  FUNC0 (intptr_t,int /*<<< orphan*/ ) ; 
 intptr_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arm_gic_intr ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct arm_gic_fdt_softc*,int /*<<< orphan*/ *) ; 
 struct arm_gic_fdt_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,intptr_t,int /*<<< orphan*/ ,struct arm_gic_fdt_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,intptr_t) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,intptr_t) ; 
 intptr_t FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct arm_gic_fdt_softc *sc = FUNC8(dev);
	phandle_t pxref;
	intptr_t xref;
	int err;

	sc->base.gic_bus = GIC_BUS_FDT;

	err = FUNC3(dev);
	if (err != 0)
		return (err);

	xref = FUNC1(FUNC14(dev));

	/*
	 * Now, when everything is initialized, it's right time to
	 * register interrupt controller to interrupt framefork.
	 */
	if (FUNC12(dev, xref) == NULL) {
		FUNC9(dev, "could not register PIC\n");
		goto cleanup;
	}

	/*
	 * Controller is root if:
	 * - doesn't have interrupt parent
	 * - his interrupt parent is this controller
	 */
	pxref = FUNC13(FUNC14(dev));
	if (pxref == 0 || xref == pxref) {
		if (FUNC10(dev, xref, arm_gic_intr, sc,
		    GIC_LAST_SGI - GIC_FIRST_SGI + 1) != 0) {
			FUNC9(dev, "could not set PIC as a root\n");
			FUNC11(dev, xref);
			goto cleanup;
		}
	} else {
		if (sc->base.gic_res[2] == NULL) {
			FUNC9(dev,
			    "not root PIC must have defined interrupt\n");
			FUNC11(dev, xref);
			goto cleanup;
		}
		if (FUNC7(dev, sc->base.gic_res[2], INTR_TYPE_CLK,
		    arm_gic_intr, NULL, sc, &sc->base.gic_intrhand)) {
			FUNC9(dev, "could not setup irq handler\n");
			FUNC11(dev, xref);
			goto cleanup;
		}
	}

	FUNC0(xref, dev);

	/* If we have children probe and attach them */
	if (FUNC2(dev)) {
		FUNC6(dev);
		return (FUNC5(dev));
	}

	return (0);

cleanup:
	FUNC4(dev);
	return(ENXIO);
}