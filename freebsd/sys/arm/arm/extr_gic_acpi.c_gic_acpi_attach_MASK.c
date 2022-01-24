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
struct arm_gic_softc {int /*<<< orphan*/  gic_bus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 intptr_t ACPI_INTR_XREF ; 
 int ENXIO ; 
 int /*<<< orphan*/  GIC_BUS_ACPI ; 
 scalar_t__ GIC_FIRST_SGI ; 
 scalar_t__ GIC_LAST_SGI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arm_gic_intr ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct arm_gic_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,intptr_t,int /*<<< orphan*/ ,struct arm_gic_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,intptr_t) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,intptr_t) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct arm_gic_softc *sc = FUNC5(dev);
	intptr_t xref;
	int err;

	sc->gic_bus = GIC_BUS_ACPI;

	err = FUNC1(dev);
	if (err != 0)
		return (err);

	xref = ACPI_INTR_XREF;

	/*
	 * Now, when everything is initialized, it's right time to
	 * register interrupt controller to interrupt framefork.
	 */
	if (FUNC9(dev, xref) == NULL) {
		FUNC6(dev, "could not register PIC\n");
		goto cleanup;
	}

	/*
	 * Controller is root:
	 */
	if (FUNC7(dev, xref, arm_gic_intr, sc,
	    GIC_LAST_SGI - GIC_FIRST_SGI + 1) != 0) {
		FUNC6(dev, "could not set PIC as a root\n");
		FUNC8(dev, xref);
		goto cleanup;
	}
	/* If we have children probe and attach them */
	if (FUNC0(dev)) {
		FUNC4(dev);
		return (FUNC3(dev));
	}

	return (0);

cleanup:
	FUNC2(dev);
	return(ENXIO);
}