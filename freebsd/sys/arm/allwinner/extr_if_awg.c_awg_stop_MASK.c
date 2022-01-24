#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_8__ {int cur; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_tag; TYPE_3__* desc_ring; } ;
struct TYPE_6__ {int next; scalar_t__ queued; int cur; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_tag; TYPE_1__* desc_ring; } ;
struct awg_softc {TYPE_4__ rx; TYPE_2__ tx; scalar_t__ link; int /*<<< orphan*/  stat_ch; int /*<<< orphan*/  ifp; } ;
typedef  int /*<<< orphan*/  if_t ;
struct TYPE_7__ {scalar_t__ status; } ;
struct TYPE_5__ {scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct awg_softc*) ; 
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  EMAC_RX_CTL_0 ; 
 int /*<<< orphan*/  EMAC_RX_CTL_1 ; 
 int /*<<< orphan*/  EMAC_TX_CTL_0 ; 
 int /*<<< orphan*/  EMAC_TX_CTL_1 ; 
 int FLUSH_TX_FIFO ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int FUNC1 (struct awg_softc*,int /*<<< orphan*/ ) ; 
 int RX_DESC_CTL ; 
 int RX_DMA_EN ; 
 int RX_EN ; 
 int FUNC2 (int) ; 
 int TX_DESC_CTL ; 
 int TX_DMA_EN ; 
 int TX_EN ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct awg_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct awg_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct awg_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct awg_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct awg_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (scalar_t__) ; 

__attribute__((used)) static void
FUNC13(struct awg_softc *sc)
{
	if_t ifp;
	uint32_t val;
	int i;

	FUNC0(sc);

	ifp = sc->ifp;

	FUNC10(&sc->stat_ch);

	/* Stop transmit DMA and flush data in the TX FIFO */
	val = FUNC1(sc, EMAC_TX_CTL_1);
	val &= ~TX_DMA_EN;
	val |= FLUSH_TX_FIFO;
	FUNC4(sc, EMAC_TX_CTL_1, val);

	/* Disable transmitter */
	val = FUNC1(sc, EMAC_TX_CTL_0);
	FUNC4(sc, EMAC_TX_CTL_0, val & ~TX_EN);

	/* Disable receiver */
	val = FUNC1(sc, EMAC_RX_CTL_0);
	FUNC4(sc, EMAC_RX_CTL_0, val & ~RX_EN);

	/* Disable interrupts */
	FUNC6(sc);

	/* Disable transmit DMA */
	val = FUNC1(sc, EMAC_TX_CTL_1);
	FUNC4(sc, EMAC_TX_CTL_1, val & ~TX_DMA_EN);

	/* Disable receive DMA */
	val = FUNC1(sc, EMAC_RX_CTL_1);
	FUNC4(sc, EMAC_RX_CTL_1, val & ~RX_DMA_EN);

	sc->link = 0;

	/* Finish handling transmitted buffers */
	FUNC8(sc);

	/* Release any untransmitted buffers. */
	for (i = sc->tx.next; sc->tx.queued > 0; i = FUNC3(i)) {
		val = FUNC12(sc->tx.desc_ring[i].status);
		if ((val & TX_DESC_CTL) != 0)
			break;
		FUNC5(sc, i);
	}
	sc->tx.next = i;
	for (; sc->tx.queued > 0; i = FUNC3(i)) {
		sc->tx.desc_ring[i].status = 0;
		FUNC5(sc, i);
	}
	sc->tx.cur = sc->tx.next;
	FUNC9(sc->tx.desc_tag, sc->tx.desc_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	/* Setup RX buffers for reuse */
	FUNC9(sc->rx.desc_tag, sc->rx.desc_map,
	    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

	for (i = sc->rx.cur; ; i = FUNC2(i)) {
		val = FUNC12(sc->rx.desc_ring[i].status);
		if ((val & RX_DESC_CTL) != 0)
			break;
		FUNC7(sc, i);
	}
	sc->rx.cur = i;
	FUNC9(sc->rx.desc_tag, sc->rx.desc_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	FUNC11(ifp, 0, IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
}