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
struct gic_v3_softc {scalar_t__ gic_nchildren; int /*<<< orphan*/  gic_children; int /*<<< orphan*/ * gic_pic; int /*<<< orphan*/  gic_bus; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_INTR_XREF ; 
 int ENXIO ; 
 int /*<<< orphan*/  GIC_BUS_ACPI ; 
 scalar_t__ GIC_FIRST_SGI ; 
 scalar_t__ GIC_LAST_SGI ; 
 int /*<<< orphan*/  arm_gic_v3_intr ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 struct gic_v3_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gic_v3_softc*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct gic_v3_softc *sc;
	int err;

	sc = FUNC1(dev);
	sc->dev = dev;
	sc->gic_bus = GIC_BUS_ACPI;

	err = FUNC4(dev);
	if (err != 0)
		goto error;

	err = FUNC5(dev);
	if (err != 0)
		goto error;

	sc->gic_pic = FUNC8(dev, ACPI_INTR_XREF);
	if (sc->gic_pic == NULL) {
		FUNC2(dev, "could not register PIC\n");
		err = ENXIO;
		goto error;
	}

	if (FUNC7(dev, ACPI_INTR_XREF, arm_gic_v3_intr, sc,
	    GIC_LAST_SGI - GIC_FIRST_SGI + 1) != 0) {
		err = ENXIO;
		goto error;
	}

	/*
	 * Try to register the ITS driver to this GIC. The GIC will act as
	 * a bus in that case. Failure here will not affect the main GIC
	 * functionality.
	 */
	FUNC3(dev);

	if (FUNC0(dev, &sc->gic_children, &sc->gic_nchildren) !=0)
		sc->gic_nchildren = 0;

	return (0);

error:
	if (bootverbose) {
		FUNC2(dev,
		    "Failed to attach. Error %d\n", err);
	}
	/* Failure so free resources */
	FUNC6(dev);

	return (err);
}