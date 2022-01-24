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
struct phynode {int dummy; } ;
struct padctl_softc {int phy_ena_cnt; } ;
struct padctl_pad {int (* powerup ) (struct padctl_softc*,struct padctl_lane*) ;int (* powerdown ) (struct padctl_softc*,struct padctl_lane*) ;} ;
struct padctl_lane {intptr_t name; struct padctl_pad* pad; int /*<<< orphan*/  enabled; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 struct padctl_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,intptr_t) ; 
 struct padctl_lane* lanes_tbl ; 
 intptr_t FUNC2 (struct padctl_lane*) ; 
 int FUNC3 (struct padctl_softc*) ; 
 int FUNC4 (struct padctl_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct phynode*) ; 
 intptr_t FUNC6 (struct phynode*) ; 
 int FUNC7 (struct padctl_softc*,struct padctl_lane*) ; 
 int FUNC8 (struct padctl_softc*,struct padctl_lane*) ; 

__attribute__((used)) static int
FUNC9(struct phynode *phy, bool enable)
{
	device_t dev;
	intptr_t id;
	struct padctl_softc *sc;
	struct padctl_lane *lane;
	struct padctl_pad *pad;
	int rv;

	dev = FUNC5(phy);
	id = FUNC6(phy);
	sc = FUNC0(dev);

	if (id < 0 || id >= FUNC2(lanes_tbl)) {
		FUNC1(dev, "Unknown phy: %d\n", id);
		return (ENXIO);
	}
	lane = lanes_tbl + id;
	if (!lane->enabled) {
		FUNC1(dev, "Lane is not enabled/configured: %s\n",
		    lane->name);
		return (ENXIO);
	}
	pad = lane->pad;
	if (enable) {
		if (sc->phy_ena_cnt == 0) {
			rv = FUNC4(sc);
			if (rv != 0)
				return (rv);
		}
		sc->phy_ena_cnt++;
	}

	if (enable)
		rv = pad->powerup(sc, lane);
	else
		rv = pad->powerdown(sc, lane);
	if (rv != 0)
		return (rv);

	if (!enable) {
		 if (sc->phy_ena_cnt == 1) {
			rv = FUNC3(sc);
			if (rv != 0)
				return (rv);
		}
		sc->phy_ena_cnt--;
	}

	return (0);
}