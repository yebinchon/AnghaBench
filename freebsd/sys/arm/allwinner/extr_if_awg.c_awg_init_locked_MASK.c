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
struct mii_data {int dummy; } ;
struct awg_softc {int /*<<< orphan*/  stat_ch; int /*<<< orphan*/  ifp; int /*<<< orphan*/  miibus; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct awg_softc*) ; 
 int BASIC_CTL_BURST_LEN_SHIFT ; 
 int BASIC_CTL_RX_TX_PRI ; 
 int CHECK_CRC ; 
 int /*<<< orphan*/  EMAC_BASIC_CTL_1 ; 
 int /*<<< orphan*/  EMAC_RX_CTL_0 ; 
 int /*<<< orphan*/  EMAC_RX_CTL_1 ; 
 int /*<<< orphan*/  EMAC_TX_CTL_0 ; 
 int /*<<< orphan*/  EMAC_TX_CTL_1 ; 
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int FUNC1 (struct awg_softc*,int /*<<< orphan*/ ) ; 
 int RX_DMA_EN ; 
 int RX_EN ; 
 int RX_MD ; 
 int TX_DMA_EN ; 
 int TX_EN ; 
 int TX_MD ; 
 int TX_NEXT_FRAME ; 
 int /*<<< orphan*/  FUNC2 (struct awg_softc*,int /*<<< orphan*/ ,int) ; 
 int awg_burst_len ; 
 int /*<<< orphan*/  FUNC3 (struct awg_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct awg_softc*) ; 
 scalar_t__ awg_rx_tx_pri ; 
 int /*<<< orphan*/  FUNC5 (struct awg_softc*) ; 
 int /*<<< orphan*/  awg_tick ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct awg_softc*) ; 
 struct mii_data* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC12(struct awg_softc *sc)
{
	struct mii_data *mii;
	uint32_t val;
	if_t ifp;

	mii = FUNC7(sc->miibus);
	ifp = sc->ifp;

	FUNC0(sc);

	if (FUNC9(ifp) & IFF_DRV_RUNNING)
		return;

	FUNC5(sc);

	/* Configure DMA burst length and priorities */
	val = awg_burst_len << BASIC_CTL_BURST_LEN_SHIFT;
	if (awg_rx_tx_pri)
		val |= BASIC_CTL_RX_TX_PRI;
	FUNC2(sc, EMAC_BASIC_CTL_1, val);

	/* Enable interrupts */
#ifdef DEVICE_POLLING
	if ((if_getcapenable(ifp) & IFCAP_POLLING) == 0)
		awg_enable_intr(sc);
	else
		awg_disable_intr(sc);
#else
	FUNC4(sc);
#endif

	/* Enable transmit DMA */
	val = FUNC1(sc, EMAC_TX_CTL_1);
	FUNC2(sc, EMAC_TX_CTL_1, val | TX_DMA_EN | TX_MD | TX_NEXT_FRAME);

	/* Enable receive DMA */
	val = FUNC1(sc, EMAC_RX_CTL_1);
	FUNC2(sc, EMAC_RX_CTL_1, val | RX_DMA_EN | RX_MD);

	/* Enable transmitter */
	val = FUNC1(sc, EMAC_TX_CTL_0);
	FUNC2(sc, EMAC_TX_CTL_0, val | TX_EN);

	/* Enable receiver */
	val = FUNC1(sc, EMAC_RX_CTL_0);
	FUNC2(sc, EMAC_RX_CTL_0, val | RX_EN | CHECK_CRC);

	FUNC10(ifp, IFF_DRV_RUNNING, IFF_DRV_OACTIVE);

	FUNC11(mii);
	FUNC6(&sc->stat_ch, hz, awg_tick, sc);
}