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
 int /*<<< orphan*/  EMAC_MAC_MWTD ; 
 int /*<<< orphan*/  FUNC0 (struct emac_softc*,int /*<<< orphan*/ ,int) ; 
 struct emac_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct emac_softc*) ; 

__attribute__((used)) static int
FUNC4(device_t dev, int phy, int reg, int data)
{
	struct emac_softc *sc;

	sc = FUNC1(dev);

	/* Issue phy address and reg */
	FUNC0(sc, EMAC_MAC_MADR, (phy << 8) | reg);
	/* Write data */
	FUNC0(sc, EMAC_MAC_MWTD, data);
	/* Pull up the phy io line */
	FUNC0(sc, EMAC_MAC_MCMD, 0x1);
	if (!FUNC3(sc)) {
		FUNC2(dev, "timeout waiting for mii write\n");
		return (0);
	}
	/* Push down the phy io line */
	FUNC0(sc, EMAC_MAC_MCMD, 0x0);

	return (0);
}