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
struct phynode_init_def {void* ofw_node; } ;
struct phynode {int dummy; } ;
struct awusb3phy_softc {int /*<<< orphan*/  reg; int /*<<< orphan*/  res; } ;
typedef  void* phandle_t ;
typedef  int /*<<< orphan*/  hwreset_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  clk_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  aw_usb3phy_spec ; 
 int /*<<< orphan*/  awusb3phy_phynode_class ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct awusb3phy_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 struct phynode* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct phynode_init_def*) ; 
 int /*<<< orphan*/ * FUNC10 (struct phynode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,void*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct phynode *phynode;
	struct phynode_init_def phy_init;
	struct awusb3phy_softc *sc;
	clk_t clk;
	hwreset_t rst;
	phandle_t node;
	int error, i;

	sc = FUNC4(dev);
	node = FUNC8(dev);

	if (FUNC0(dev, aw_usb3phy_spec, &sc->res) != 0) {
		FUNC5(dev, "cannot allocate resources for device\n");
		return (ENXIO);
	}

	/* Enable clocks */
	for (i = 0; FUNC2(dev, 0, i, &clk) == 0; i++) {
		error = FUNC1(clk);
		if (error != 0) {
			FUNC5(dev, "couldn't enable clock %s\n",
			    FUNC3(clk));
			return (error);
		}
	}

	/* De-assert resets */
	for (i = 0; FUNC7(dev, 0, i, &rst) == 0; i++) {
		error = FUNC6(rst);
		if (error != 0) {
			FUNC5(dev, "couldn't de-assert reset %d\n",
			    i);
			return (error);
		}
	}

	/* Get regulators */
	FUNC11(dev, node, "phy-supply", &sc->reg);

	/* Create the phy */
	phy_init.ofw_node = FUNC8(dev);
	phynode = FUNC9(dev, &awusb3phy_phynode_class,
	    &phy_init);
	if (phynode == NULL) {
		FUNC5(dev, "failed to create USB PHY\n");
		return (ENXIO);
	}
	if (FUNC10(phynode) == NULL) {
		FUNC5(dev, "failed to create USB PHY\n");
		return (ENXIO);
	}

	return (error);
}