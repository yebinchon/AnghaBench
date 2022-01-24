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
struct phynode_init_def {int /*<<< orphan*/  ofw_node; struct padctl_lane* id; } ;
struct phynode {int dummy; } ;
struct padctl_softc {int /*<<< orphan*/  dev; } ;
struct padctl_pad {int /*<<< orphan*/  nlanes; struct padctl_lane** lanes; } ;
struct padctl_lane {int enabled; struct padctl_pad* pad; int /*<<< orphan*/  mux_idx; } ;
typedef  int /*<<< orphan*/  phy_init ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,void**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct phynode_init_def*,int) ; 
 int FUNC3 (struct padctl_softc*,struct padctl_lane*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int lanes_tbl ; 
 struct phynode* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct phynode_init_def*) ; 
 int /*<<< orphan*/ * FUNC6 (struct phynode*) ; 
 struct padctl_lane* FUNC7 (struct padctl_softc*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct padctl_softc*,struct padctl_lane*,char*) ; 
 int /*<<< orphan*/  xusbpadctl_phynode_class ; 

__attribute__((used)) static int
FUNC9(struct padctl_softc *sc, phandle_t node, struct padctl_pad *pad)
{
	struct padctl_lane *lane;
	struct phynode *phynode;
	struct phynode_init_def phy_init;
	char *name;
	char *function;
	int rv;

	name = NULL;
	function = NULL;
	rv = FUNC0(node, "name", (void **)&name);
	if (rv <= 0) {
		FUNC4(sc->dev, "Cannot read lane name.\n");
		return (ENXIO);
	}

	lane = FUNC7(sc, name);
	if (lane == NULL) {
		FUNC4(sc->dev, "Unknown lane: %s\n", name);
		rv = ENXIO;
		goto end;
	}

	/* Read function (mux) settings. */
	rv = FUNC0(node, "nvidia,function", (void **)&function);
	if (rv <= 0) {
		FUNC4(sc->dev, "Cannot read lane function.\n");
		rv = ENXIO;
		goto end;
	}

	lane->mux_idx = FUNC8(sc, lane, function);
	if (lane->mux_idx == ~0) {
		FUNC4(sc->dev, "Unknown function %s for lane %s\n",
		    function, name);
		rv = ENXIO;
		goto end;
	}

	rv = FUNC3(sc, lane);
	if (rv != 0) {
		FUNC4(sc->dev, "Cannot configure lane: %s: %d\n",
		    name, rv);
		rv = ENXIO;
		goto end;
	}
	lane->pad = pad;
	lane->enabled = true;
	pad->lanes[pad->nlanes++] = lane;

	/* Create and register phy. */
	FUNC2(&phy_init, sizeof(phy_init));
	phy_init.id = lane - lanes_tbl;
	phy_init.ofw_node = node;
	phynode = FUNC5(sc->dev, &xusbpadctl_phynode_class, &phy_init);
	if (phynode == NULL) {
		FUNC4(sc->dev, "Cannot create phy\n");
		rv = ENXIO;
		goto end;
	}
	if (FUNC6(phynode) == NULL) {
		FUNC4(sc->dev, "Cannot create phy\n");
		return (ENXIO);
	}

	rv = 0;

end:
	if (name != NULL)
		FUNC1(name);
	if (function != NULL)
		FUNC1(function);
	return (rv);
}