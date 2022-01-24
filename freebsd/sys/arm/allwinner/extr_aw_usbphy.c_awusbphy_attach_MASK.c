#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct phynode_init_def {int id; int /*<<< orphan*/  ofw_node; } ;
struct phynode {int dummy; } ;
struct awusbphy_softc {TYPE_1__* phy_conf; } ;
typedef  int /*<<< orphan*/  phy_init ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int num_phys; } ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  awusbphy_phynode_class ; 
 int /*<<< orphan*/  FUNC1 (struct phynode_init_def*,int) ; 
 struct awusbphy_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct phynode* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct phynode_init_def*) ; 
 int /*<<< orphan*/ * FUNC6 (struct phynode*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	int error;
	struct phynode *phynode;
	struct phynode_init_def phy_init;
	struct awusbphy_softc *sc;
	int i;

	sc = FUNC2(dev);
	error = FUNC0(dev);
	if (error) {
		FUNC3(dev, "failed to initialize USB PHY, error %d\n",
		    error);
		return (error);
	}

	/* Create and register phys. */
	for (i = 0; i < sc->phy_conf->num_phys; i++) {
		FUNC1(&phy_init, sizeof(phy_init));
		phy_init.id = i;
		phy_init.ofw_node = FUNC4(dev);
		phynode = FUNC5(dev, &awusbphy_phynode_class,
		    &phy_init);
		if (phynode == NULL) {
			FUNC3(dev, "failed to create USB PHY\n");
			return (ENXIO);
		}
		if (FUNC6(phynode) == NULL) {
			FUNC3(dev, "failed to create USB PHY\n");
			return (ENXIO);
		}
	}

	return (error);
}