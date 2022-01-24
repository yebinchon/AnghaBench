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
struct emac_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EMAC_MAC_MADR ; 
 int /*<<< orphan*/  EMAC_MAC_MCMD ; 
 int /*<<< orphan*/  EMAC_MAC_MRDD ; 
 int FUNC0 (struct emac_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct emac_softc*,int /*<<< orphan*/ ,int) ; 
 struct emac_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct emac_softc*) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int phy, int reg)
{
	struct emac_softc *sc;
	int rval;

	sc = FUNC2(dev);

	/* Issue phy address and reg */
	FUNC1(sc, EMAC_MAC_MADR, (phy << 8) | reg);
	/* Pull up the phy io line */
	FUNC1(sc, EMAC_MAC_MCMD, 0x1);
	if (!FUNC4(sc)) {
		FUNC3(dev, "timeout waiting for mii read\n");
		return (0);
	}
	/* Push down the phy io line */
	FUNC1(sc, EMAC_MAC_MCMD, 0x0);
	/* Read data */
	rval = FUNC0(sc, EMAC_MAC_MRDD);

	return (rval);
}