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
struct rk_typec_phy_softc {int phy_ctrl_id; int /*<<< orphan*/  res; int /*<<< orphan*/  rst_tcphy; int /*<<< orphan*/  rst_pipe; int /*<<< orphan*/  rst_uphy; int /*<<< orphan*/  tcpdphy_ref; int /*<<< orphan*/  tcpdcore; int /*<<< orphan*/  grf; int /*<<< orphan*/  dev; } ;
struct phynode_init_def {int ofw_node; int /*<<< orphan*/  id; } ;
struct phynode {int dummy; } ;
typedef  int /*<<< orphan*/  reg_prop ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  RK3399_TYPEC_PHY_USB3 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct rk_typec_phy_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 struct phynode* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct phynode_init_def*) ; 
 int /*<<< orphan*/ * FUNC15 (struct phynode*) ; 
 int /*<<< orphan*/  rk_typec_phy_phynode_class ; 
 int /*<<< orphan*/  rk_typec_phy_spec ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct rk_typec_phy_softc *sc;
	struct phynode_init_def phy_init;
	struct phynode *phynode;
	phandle_t node, usb3;
	phandle_t reg_prop[4];

	sc = FUNC7(dev);
	sc->dev = dev;
	node = FUNC12(dev);

	/* 
	 * Find out which phy we are.
	 * There is not property for this so we need to know the
	 * address to use the correct GRF registers.
	 */
	if (FUNC1(node, "reg", reg_prop, sizeof(reg_prop)) <= 0) {
		FUNC8(dev, "Cannot guess phy controller id\n");
		return (ENXIO);
	}
	switch (reg_prop[1]) {
	case 0xff7c0000:
		sc->phy_ctrl_id = 0;
		break;
	case 0xff800000:
		sc->phy_ctrl_id = 1;
		break;
	default:
		FUNC8(dev, "Unknown address %x for typec-phy\n", reg_prop[1]);
		return (ENXIO);
	}

	if (FUNC3(dev, rk_typec_phy_spec, &sc->res) != 0) {
		FUNC8(dev, "cannot allocate resources for device\n");
		goto fail;
	}

	if (FUNC16(dev, node,
	    "rockchip,grf", &sc->grf) != 0) {
		FUNC8(dev, "Cannot get syscon handle\n");
		goto fail;
	}

	if (FUNC5(dev, 0, "tcpdcore", &sc->tcpdcore) != 0) {
		FUNC8(dev, "Cannot get tcpdcore clock\n");
		goto fail;
	}
	if (FUNC5(dev, 0, "tcpdphy-ref", &sc->tcpdphy_ref) != 0) {
		FUNC8(dev, "Cannot get tcpdphy-ref clock\n");
		goto fail;
	}

	if (FUNC10(dev, 0, "uphy", &sc->rst_uphy) != 0) {
		FUNC8(dev, "Cannot get uphy reset\n");
		goto fail;
	}
	if (FUNC10(dev, 0, "uphy-pipe", &sc->rst_pipe) != 0) {
		FUNC8(dev, "Cannot get uphy-pipe reset\n");
		goto fail;
	}
	if (FUNC10(dev, 0, "uphy-tcphy", &sc->rst_tcphy) != 0) {
		FUNC8(dev, "Cannot get uphy-tcphy reset\n");
		goto fail;
	}

	/* 
	 * Make sure that the module is asserted 
	 * We need to deassert in a certain order when we enable the phy
	 */
	FUNC9(sc->rst_uphy);
	FUNC9(sc->rst_pipe);
	FUNC9(sc->rst_tcphy);

	/* Set the assigned clocks parent and freq */
	if (FUNC6(dev, node) != 0) {
		FUNC8(dev, "clk_set_assigned failed\n");
		goto fail;
	}

	/* Only usb3 port is supported right now */
	usb3 = FUNC11(node, "usb3-port");
	if (usb3 == 0) {
		FUNC8(dev, "Cannot find usb3-port child node\n");
		goto fail;
	}
	/* If the child isn't enable attach the driver
	 *  but do not register the PHY. 
	 */
	if (!FUNC13(usb3))
		return (0);

	phy_init.id = RK3399_TYPEC_PHY_USB3;
	phy_init.ofw_node = usb3;
	phynode = FUNC14(dev, &rk_typec_phy_phynode_class, &phy_init);
	if (phynode == NULL) {
		FUNC8(dev, "failed to create phy usb3-port\n");
		goto fail;
	}
	if (FUNC15(phynode) == NULL) {
		FUNC8(dev, "failed to register phy usb3-port\n");
		goto fail;
	}

	FUNC0(FUNC2(usb3), dev);

	return (0);

fail:
	FUNC4(dev, rk_typec_phy_spec, &sc->res);

	return (ENXIO);
}