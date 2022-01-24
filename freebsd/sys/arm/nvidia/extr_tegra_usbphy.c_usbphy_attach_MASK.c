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
struct usbphy_softc {int have_utmi_regs; scalar_t__ dr_mode; scalar_t__ ifc_type; int /*<<< orphan*/  dev; int /*<<< orphan*/  supply_vbus; int /*<<< orphan*/  clk_reg; int /*<<< orphan*/  clk_pllu; int /*<<< orphan*/  reset_usb; int /*<<< orphan*/  clk_pads; int /*<<< orphan*/  reset_pads; int /*<<< orphan*/ * mem_res; void* pads_res; } ;
struct phynode_init_def {int id; int /*<<< orphan*/  ofw_node; } ;
struct phynode {int dummy; } ;
typedef  int /*<<< orphan*/  phy_init ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ USB_DR_MODE_HOST ; 
 scalar_t__ USB_DR_MODE_UNKNOWN ; 
 scalar_t__ USB_IFC_TYPE_UTMI ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct phynode_init_def*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct usbphy_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct phynode* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct phynode_init_def*) ; 
 int /*<<< orphan*/ * FUNC11 (struct phynode*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  usbphy_phynode_class ; 
 int FUNC16 (struct usbphy_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct usbphy_softc *sc;
	int rid, rv;
	phandle_t node;
	struct phynode *phynode;
	struct phynode_init_def phy_init;

	sc = FUNC5(dev);
	sc->dev = dev;

	rid = 0;
	sc->mem_res = FUNC1(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (sc->mem_res == NULL) {
		FUNC6(dev, "Cannot allocate memory resources\n");
		return (ENXIO);
	}

	rid = 1;
	sc->pads_res = FUNC1(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (sc->mem_res == NULL) {
		FUNC6(dev, "Cannot allocate memory resources\n");
		return (ENXIO);
	}

	node = FUNC9(dev);

	rv = FUNC8(sc->dev, 0, "usb", &sc->reset_usb);
	if (rv != 0) {
		FUNC6(dev, "Cannot get 'usb' reset\n");
		return (ENXIO);
	}
	rv = FUNC8(sc->dev, 0, "utmi-pads", &sc->reset_pads);
	if (rv != 0) {
		FUNC6(dev, "Cannot get 'utmi-pads' reset\n");
		return (ENXIO);
	}

	rv = FUNC4(sc->dev, 0, "reg", &sc->clk_reg);
	if (rv != 0) {
		FUNC6(sc->dev, "Cannot get 'reg' clock\n");
		return (ENXIO);
	}
	rv = FUNC4(sc->dev, 0, "pll_u", &sc->clk_pllu);
	if (rv != 0) {
		FUNC6(sc->dev, "Cannot get 'pll_u' clock\n");
		return (ENXIO);
	}
	rv = FUNC4(sc->dev, 0, "utmi-pads", &sc->clk_pads);
	if (rv != 0) {
		FUNC6(sc->dev, "Cannot get 'utmi-pads' clock\n");
		return (ENXIO);
	}

	rv = FUNC7(sc->reset_usb);
	if (rv != 0) {
		FUNC6(dev, "Cannot unreset 'usb' reset\n");
		return (ENXIO);
	}

	rv = FUNC3(sc->clk_pllu);
	if (rv != 0) {
		FUNC6(sc->dev, "Cannot enable 'pllu' clock\n");
		return (ENXIO);
	}
	rv = FUNC3(sc->clk_reg);
	if (rv != 0) {
		FUNC6(sc->dev, "Cannot enable 'reg' clock\n");
		return (ENXIO);
	}
	if (FUNC0(node, "nvidia,has-utmi-pad-registers"))
		sc->have_utmi_regs = true;

	sc->dr_mode = FUNC14(dev, node, "dr_mode");
	if (sc->dr_mode == USB_DR_MODE_UNKNOWN)
		sc->dr_mode = USB_DR_MODE_HOST;

	sc->ifc_type = FUNC15(dev, node, "phy_type");

	/* We supports only utmi phy mode for now .... */
	if (sc->ifc_type != USB_IFC_TYPE_UTMI) {
		FUNC6(dev, "Unsupported phy type\n");
		return (ENXIO);
	}
	rv = FUNC16(sc, node);
	if (rv < 0)
		return rv;

	if (FUNC0(node, "vbus-supply")) {
		rv = FUNC13(sc->dev, 0, "vbus-supply",
		    &sc->supply_vbus);
		if (rv != 0) {
			FUNC6(sc->dev,
			   "Cannot get \"vbus\" regulator\n");
			return (ENXIO);
		}
		rv = FUNC12(sc->supply_vbus);
		if (rv != 0) {
			FUNC6(sc->dev,
			    "Cannot enable  \"vbus\" regulator\n");
			return (rv);
		}
	}

	/* Create and register phy. */
	FUNC2(&phy_init, sizeof(phy_init));
	phy_init.id = 1;
	phy_init.ofw_node = node;
	phynode = FUNC10(dev, &usbphy_phynode_class, &phy_init);
	if (phynode == NULL) {
		FUNC6(sc->dev, "Cannot create phy\n");
		return (ENXIO);
	}
	if (FUNC11(phynode) == NULL) {
		FUNC6(sc->dev, "Cannot create phy\n");
		return (ENXIO);
	}

	return (0);
}