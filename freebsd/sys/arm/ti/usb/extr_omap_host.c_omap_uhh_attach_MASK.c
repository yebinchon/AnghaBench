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
struct omap_uhh_softc {int /*<<< orphan*/ * port_mode; int /*<<< orphan*/  uhh_mem_res; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  propname ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_HCD_OMAP_MODE_HSIC ; 
 int /*<<< orphan*/  EHCI_HCD_OMAP_MODE_PHY ; 
 int /*<<< orphan*/  EHCI_HCD_OMAP_MODE_TLL ; 
 int /*<<< orphan*/  EHCI_HCD_OMAP_MODE_UNKNOWN ; 
 int ENXIO ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,char*,void**) ; 
 int FUNC2 (int) ; 
 int OMAP_HS_USB_PORTS ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct omap_uhh_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct omap_uhh_softc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,int) ; 
 scalar_t__ FUNC14 (char*,char*) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct omap_uhh_softc *isc = FUNC6(dev);
	int err;
	int rid;
	int i;
	phandle_t node;
	char propname[16];
	char *mode;

	/* save the device */
	isc->sc_dev = dev;

	/* Allocate resource for the UHH register set */
	rid = 0;
	isc->uhh_mem_res = FUNC3(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (!isc->uhh_mem_res) {
		FUNC7(dev, "Error: Could not map UHH memory\n");
		goto error;
	}

	node = FUNC8(dev);

	if (node == -1)
		goto error;

	/* Get port modes from FDT */
	for (i = 0; i < OMAP_HS_USB_PORTS; i++) {
		isc->port_mode[i] = EHCI_HCD_OMAP_MODE_UNKNOWN;
		FUNC13(propname, sizeof(propname),
		    "port%d-mode", i+1);

		if (FUNC1(node, propname, (void**)&mode) <= 0)
			continue;
		if (FUNC14(mode, "ehci-phy") == 0)
			isc->port_mode[i] = EHCI_HCD_OMAP_MODE_PHY;
		else if (FUNC14(mode, "ehci-tll") == 0)
			isc->port_mode[i] = EHCI_HCD_OMAP_MODE_TLL;
		else if (FUNC14(mode, "ehci-hsic") == 0)
			isc->port_mode[i] = EHCI_HCD_OMAP_MODE_HSIC;
	}

	/* Initialise the ECHI registers */
	err = FUNC10(isc);
	if (err) {
		FUNC7(dev, "Error: could not setup OMAP EHCI, %d\n", err);
		goto error;
	}

	FUNC12(dev, node);

	/*
	 * Allow devices to identify.
	 */
	FUNC5(dev);

	/*
	 * Now walk the OFW tree and attach top-level devices.
	 */
	for (node = FUNC0(node); node > 0; node = FUNC2(node))
		FUNC11(dev, node, 0, NULL, -1, NULL);
	return (FUNC4(dev));

error:
	FUNC9(dev);
	return (ENXIO);
}