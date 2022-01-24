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
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct awg_softc {int link; int /*<<< orphan*/  miibus; int /*<<< orphan*/  ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct awg_softc*) ; 
 int BASIC_CTL_DUPLEX ; 
 int BASIC_CTL_SPEED ; 
 int BASIC_CTL_SPEED_10 ; 
 int BASIC_CTL_SPEED_100 ; 
 int BASIC_CTL_SPEED_1000 ; 
 int BASIC_CTL_SPEED_SHIFT ; 
 int /*<<< orphan*/  EMAC_BASIC_CTL_0 ; 
 int /*<<< orphan*/  EMAC_RX_CTL_0 ; 
 int /*<<< orphan*/  EMAC_TX_FLOW_CTL ; 
 int IFF_DRV_RUNNING ; 
#define  IFM_1000_SX 131 
#define  IFM_1000_T 130 
#define  IFM_100_TX 129 
#define  IFM_10_T 128 
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 int IFM_ETH_RXPAUSE ; 
 int IFM_ETH_TXPAUSE ; 
 int IFM_FDX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int const FUNC2 (int /*<<< orphan*/ ) ; 
 int PAUSE_TIME ; 
 int PAUSE_TIME_SHIFT ; 
 int FUNC3 (struct awg_softc*,int /*<<< orphan*/ ) ; 
 int RX_FLOW_CTL_EN ; 
 int TX_FLOW_CTL_EN ; 
 int /*<<< orphan*/  FUNC4 (struct awg_softc*,int /*<<< orphan*/ ,int) ; 
 int awg_pause_time ; 
 struct mii_data* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct awg_softc *sc)
{
	struct mii_data *mii;
	uint32_t val;

	FUNC0(sc);

	if ((FUNC6(sc->ifp) & IFF_DRV_RUNNING) == 0)
		return;
	mii = FUNC5(sc->miibus);

	if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
	    (IFM_ACTIVE | IFM_AVALID)) {
		switch (FUNC2(mii->mii_media_active)) {
		case IFM_1000_T:
		case IFM_1000_SX:
		case IFM_100_TX:
		case IFM_10_T:
			sc->link = 1;
			break;
		default:
			sc->link = 0;
			break;
		}
	} else
		sc->link = 0;

	if (sc->link == 0)
		return;

	val = FUNC3(sc, EMAC_BASIC_CTL_0);
	val &= ~(BASIC_CTL_SPEED | BASIC_CTL_DUPLEX);

	if (FUNC2(mii->mii_media_active) == IFM_1000_T ||
	    FUNC2(mii->mii_media_active) == IFM_1000_SX)
		val |= BASIC_CTL_SPEED_1000 << BASIC_CTL_SPEED_SHIFT;
	else if (FUNC2(mii->mii_media_active) == IFM_100_TX)
		val |= BASIC_CTL_SPEED_100 << BASIC_CTL_SPEED_SHIFT;
	else
		val |= BASIC_CTL_SPEED_10 << BASIC_CTL_SPEED_SHIFT;

	if ((FUNC1(mii->mii_media_active) & IFM_FDX) != 0)
		val |= BASIC_CTL_DUPLEX;

	FUNC4(sc, EMAC_BASIC_CTL_0, val);

	val = FUNC3(sc, EMAC_RX_CTL_0);
	val &= ~RX_FLOW_CTL_EN;
	if ((FUNC1(mii->mii_media_active) & IFM_ETH_RXPAUSE) != 0)
		val |= RX_FLOW_CTL_EN;
	FUNC4(sc, EMAC_RX_CTL_0, val);

	val = FUNC3(sc, EMAC_TX_FLOW_CTL);
	val &= ~(PAUSE_TIME|TX_FLOW_CTL_EN);
	if ((FUNC1(mii->mii_media_active) & IFM_ETH_TXPAUSE) != 0)
		val |= TX_FLOW_CTL_EN;
	if ((FUNC1(mii->mii_media_active) & IFM_FDX) != 0)
		val |= awg_pause_time << PAUSE_TIME_SHIFT;
	FUNC4(sc, EMAC_TX_FLOW_CTL, val);
}