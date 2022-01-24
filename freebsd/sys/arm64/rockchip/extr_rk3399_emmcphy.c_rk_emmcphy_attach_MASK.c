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
struct rk_emmcphy_softc {int /*<<< orphan*/ * syscon; } ;
struct phynode_init_def {void* ofw_node; scalar_t__ id; } ;
struct phynode {int dummy; } ;
typedef  int /*<<< orphan*/  phy_init ;
typedef  void* phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;
typedef  int /*<<< orphan*/  handle ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (void*,char*,void*,int) ; 
 scalar_t__ FUNC1 (void*,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (struct phynode_init_def*,int) ; 
 struct rk_emmcphy_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 struct phynode* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct phynode_init_def*) ; 
 intptr_t FUNC8 (struct phynode*) ; 
 int /*<<< orphan*/ * FUNC9 (struct phynode*) ; 
 int /*<<< orphan*/  rk_emmcphy_phynode_class ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,void*,char*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct phynode_init_def phy_init;
	struct phynode *phynode;
	struct rk_emmcphy_softc *sc;
	phandle_t node;
	phandle_t xnode;
	pcell_t handle;
	intptr_t phy;

	sc = FUNC4(dev);
	node = FUNC6(dev);

	if (FUNC0(node, "clocks", (void *)&handle,
	    sizeof(handle)) <= 0) {
		FUNC5(dev, "cannot get clocks handle\n");
		return (ENXIO);
	}
	xnode = FUNC2(handle);
	if (FUNC1(xnode, "arasan,soc-ctl-syscon") &&
	    FUNC10(dev, xnode,
	    "arasan,soc-ctl-syscon", &sc->syscon) != 0) {
		FUNC5(dev, "cannot get grf driver handle\n");
		return (ENXIO);
	}

	if (sc->syscon == NULL) {
		FUNC5(dev, "failed to get syscon\n");
		return (ENXIO);
	}

	/* Create and register phy */
	FUNC3(&phy_init, sizeof(phy_init));
	phy_init.id = 0;
	phy_init.ofw_node = FUNC6(dev);
	phynode = FUNC7(dev, &rk_emmcphy_phynode_class, &phy_init);
	if (phynode == NULL) {
		FUNC5(dev, "failed to create eMMC PHY\n");
		return (ENXIO);
	}
	if (FUNC9(phynode) == NULL) {
		FUNC5(dev, "failed to register eMMC PHY\n");
		return (ENXIO);
	}
	if (bootverbose) {
		phy = FUNC8(phynode);
		FUNC5(dev, "Attached phy id: %ld\n", phy);
	}
	return (0);
}