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
typedef  int uint32_t ;
struct ti_aintc_softc {int /*<<< orphan*/ * aintc_res; int /*<<< orphan*/  aintc_bsh; int /*<<< orphan*/  aintc_bst; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INTC_REVISION ; 
 int /*<<< orphan*/  INTC_SYSCONFIG ; 
 int /*<<< orphan*/  INTC_SYSSTATUS ; 
 int /*<<< orphan*/  INTC_THRESHOLD ; 
 int FUNC0 (struct ti_aintc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ti_aintc_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ti_aintc_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ti_aintc_softc*) ; 
 int /*<<< orphan*/  ti_aintc_spec ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct		ti_aintc_softc *sc = FUNC3(dev);
	uint32_t x;

	sc->sc_dev = dev;

	if (FUNC2(dev, ti_aintc_spec, sc->aintc_res)) {
		FUNC4(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	sc->aintc_bst = FUNC6(sc->aintc_res[0]);
	sc->aintc_bsh = FUNC5(sc->aintc_res[0]);

	x = FUNC0(sc, INTC_REVISION);
	FUNC4(dev, "Revision %u.%u\n",(x >> 4) & 0xF, x & 0xF);

	/* SoftReset */
	FUNC1(sc, INTC_SYSCONFIG, 2);

	/* Wait for reset to complete */
	while(!(FUNC0(sc, INTC_SYSSTATUS) & 1));

	/*Set Priority Threshold */
	FUNC1(sc, INTC_THRESHOLD, 0xFF);

	if (FUNC7(sc) != 0) {
		FUNC4(dev, "could not attach PIC\n");
		return (ENXIO);
	}
	return (0);
}