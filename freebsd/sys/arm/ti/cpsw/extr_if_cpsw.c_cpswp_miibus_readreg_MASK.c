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
struct cpswp_softc {int /*<<< orphan*/  phyaccess; int /*<<< orphan*/  swsc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MDIO_PHYACCESS_ACK ; 
 int MDIO_PHYACCESS_GO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cpswp_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int phy, int reg)
{
	struct cpswp_softc *sc;
	uint32_t cmd, r;

	sc = FUNC3(dev);
	if (!FUNC2(sc->swsc, sc->phyaccess)) {
		FUNC4(dev, "MDIO not ready to read\n");
		return (0);
	}

	/* Set GO, reg, phy */
	cmd = MDIO_PHYACCESS_GO | (reg & 0x1F) << 21 | (phy & 0x1F) << 16;
	FUNC1(sc->swsc, sc->phyaccess, cmd);

	if (!FUNC2(sc->swsc, sc->phyaccess)) {
		FUNC4(dev, "MDIO timed out during read\n");
		return (0);
	}

	r = FUNC0(sc->swsc, sc->phyaccess);
	if ((r & MDIO_PHYACCESS_ACK) == 0) {
		FUNC4(dev, "Failed to read from PHY.\n");
		r = 0;
	}
	return (r & 0xFFFF);
}