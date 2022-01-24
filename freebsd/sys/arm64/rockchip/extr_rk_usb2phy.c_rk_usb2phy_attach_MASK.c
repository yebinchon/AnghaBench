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
struct rk_usb2phy_softc {int /*<<< orphan*/  phy_supply; int /*<<< orphan*/  clk; int /*<<< orphan*/  grf; int /*<<< orphan*/  dev; } ;
struct phynode_init_def {scalar_t__ ofw_node; int /*<<< orphan*/  id; } ;
struct phynode {int dummy; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  RK3399_USBPHY_HOST ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct rk_usb2phy_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC7 (scalar_t__,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 struct phynode* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct phynode_init_def*) ; 
 int /*<<< orphan*/ * FUNC11 (struct phynode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct rk_usb2phy_softc*) ; 
 int /*<<< orphan*/  rk_usb2phy_phynode_class ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct rk_usb2phy_softc *sc;
	struct phynode_init_def phy_init;
	struct phynode *phynode;
	phandle_t node, host;
	int err;

	sc = FUNC5(dev);
	sc->dev = dev;
	node = FUNC8(dev);

	if (FUNC14(dev, &sc->grf) != 0) {
		FUNC6(dev, "Cannot get syscon handle\n");
		return (ENXIO);
	}

	if (FUNC3(dev, 0, "phyclk", &sc->clk) != 0) {
		FUNC6(dev, "Cannot get clock\n");
		return (ENXIO);
	}
	err = FUNC2(sc->clk);
	if (err != 0) {
		FUNC6(dev, "Could not enable clock %s\n",
		    FUNC4(sc->clk));
		return (ENXIO);
	}

	err = FUNC13(sc);
	if (err != 0)
		return (err);

	/* Only host is supported right now */

	host = FUNC7(node, "host-port");
	if (host == 0) {
		FUNC6(dev, "Cannot find host-port child node\n");
		return (ENXIO);
	}

	if (!FUNC9(host)) {
		FUNC6(dev, "host-port isn't okay\n");
		return (0);
	}

	FUNC12(dev, host, "phy-supply", &sc->phy_supply);
	phy_init.id = RK3399_USBPHY_HOST;
	phy_init.ofw_node = host;
	phynode = FUNC10(dev, &rk_usb2phy_phynode_class, &phy_init);
	if (phynode == NULL) {
		FUNC6(dev, "failed to create host USB2PHY\n");
		return (ENXIO);
	}
	if (FUNC11(phynode) == NULL) {
		FUNC6(dev, "failed to register host USB2PHY\n");
		return (ENXIO);
	}

	FUNC0(FUNC1(host), dev);

	return (0);
}