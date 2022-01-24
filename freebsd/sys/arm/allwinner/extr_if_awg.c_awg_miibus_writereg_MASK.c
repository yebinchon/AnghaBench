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
struct awg_softc {int mdc_div_ratio_m; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EMAC_MII_CMD ; 
 int /*<<< orphan*/  EMAC_MII_DATA ; 
 int MDC_DIV_RATIO_M_SHIFT ; 
 int MII_BUSY ; 
 int MII_BUSY_RETRY ; 
 int MII_WR ; 
 int PHY_ADDR_SHIFT ; 
 int PHY_REG_ADDR_SHIFT ; 
 int FUNC1 (struct awg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct awg_softc*,int /*<<< orphan*/ ,int) ; 
 struct awg_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int phy, int reg, int val)
{
	struct awg_softc *sc;
	int retry;

	sc = FUNC3(dev);

	FUNC2(sc, EMAC_MII_DATA, val);
	FUNC2(sc, EMAC_MII_CMD,
	    (sc->mdc_div_ratio_m << MDC_DIV_RATIO_M_SHIFT) |
	    (phy << PHY_ADDR_SHIFT) |
	    (reg << PHY_REG_ADDR_SHIFT) |
	    MII_WR | MII_BUSY);
	for (retry = MII_BUSY_RETRY; retry > 0; retry--) {
		if ((FUNC1(sc, EMAC_MII_CMD) & MII_BUSY) == 0)
			break;
		FUNC0(10);
	}

	if (retry == 0)
		FUNC4(dev, "phy write timeout, phy=%d reg=%d\n",
		    phy, reg);

	return (0);
}