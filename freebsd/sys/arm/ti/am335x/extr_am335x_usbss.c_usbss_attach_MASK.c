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
struct usbss_softc {int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/  sc_mem_rid; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MUSB0_CLK ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC3 (struct usbss_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USBSS_REVREG ; 
 int /*<<< orphan*/  USBSS_SYSCONFIG ; 
 int USBSS_SYSCONFIG_SRESET ; 
 int /*<<< orphan*/  FUNC4 (struct usbss_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct usbss_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct usbss_softc *sc = FUNC8(dev);
	int i;
	uint32_t rev;
	phandle_t node;

	/* Request the memory resources */
	sc->sc_mem_res = FUNC5(dev, SYS_RES_MEMORY,
	    &sc->sc_mem_rid, RF_ACTIVE);
	if (sc->sc_mem_res == NULL) {
		FUNC9(dev,
		    "Error: could not allocate mem resources\n");
		return (ENXIO);
	}

	/* Enable device clocks. */
	FUNC13(MUSB0_CLK);

	/*
	 * Reset USBSS, USB0 and USB1.
	 * The registers of USB subsystem must not be accessed while the
	 * reset pulse is active (200ns).
	 */
	FUNC4(sc, USBSS_SYSCONFIG, USBSS_SYSCONFIG_SRESET);
	FUNC0(100);
	i = 10;
	while (FUNC3(sc, USBSS_SYSCONFIG) & USBSS_SYSCONFIG_SRESET) {
		FUNC0(100);
		if (i-- == 0) {
			FUNC9(dev, "reset timeout.\n");
			return (ENXIO);
		}
	}

	/* Read the module revision. */
	rev = FUNC3(sc, USBSS_REVREG);
	FUNC9(dev, "TI AM335X USBSS v%d.%d.%d\n",
	    (rev >> 8) & 7, (rev >> 6) & 3, rev & 63);

	node = FUNC10(dev);

	if (node == -1) {
		FUNC14(dev);
		return (ENXIO);
	}

	FUNC12(dev, node);

	/*
	 * Allow devices to identify.
	 */
	FUNC7(dev);

	/*
	 * Now walk the OFW tree and attach top-level devices.
	 */
	for (node = FUNC1(node); node > 0; node = FUNC2(node))
		FUNC11(dev, node, 0, NULL, -1, NULL);

	return (FUNC6(dev));
}