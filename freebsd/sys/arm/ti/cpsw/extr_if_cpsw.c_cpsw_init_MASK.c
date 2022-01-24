#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  callout; scalar_t__ timer; } ;
struct TYPE_4__ {int active_queue_len; int running; int /*<<< orphan*/  active; } ;
struct cpsw_softc {TYPE_1__ watchdog; TYPE_2__ tx; TYPE_2__ rx; scalar_t__ dualemac; } ;
struct cpsw_slot {int dummy; } ;

/* Variables and functions */
 int ALE_PORTCTL_FORWARD ; 
 int ALE_PORTCTL_INGRESS ; 
 int /*<<< orphan*/  CPSW_ALE_CONTROL ; 
 int CPSW_ALE_CTL_CLEAR_TBL ; 
 int CPSW_ALE_CTL_ENABLE ; 
 int CPSW_ALE_CTL_VLAN_AWARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CPSW_CPDMA_DMA_INTMASK_SET ; 
 int /*<<< orphan*/  CPSW_CPDMA_RX_BUFFER_OFFSET ; 
 int /*<<< orphan*/  CPSW_CPDMA_RX_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CPSW_CPDMA_RX_INTMASK_SET ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CPSW_CPDMA_TX_CONTROL ; 
 int /*<<< orphan*/  CPSW_CPDMA_TX_INTMASK_SET ; 
 int /*<<< orphan*/  CPSW_PORT_P0_CPDMA_RX_CH_MAP ; 
 int /*<<< orphan*/  CPSW_PORT_P0_CPDMA_TX_PRI_MAP ; 
 int /*<<< orphan*/  CPSW_SS_FLOW_CONTROL ; 
 int /*<<< orphan*/  CPSW_SS_PTYPE ; 
 int /*<<< orphan*/  CPSW_SS_STAT_PORT_EN ; 
 int CPSW_TXFRAGS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CPSW_WR_INT_CONTROL ; 
 int CPSW_WR_INT_PACE_EN ; 
 int CPSW_WR_INT_PRESCALE_MASK ; 
 int /*<<< orphan*/  MDIOCONTROL ; 
 int MDIOCTL_ENABLE ; 
 int MDIOCTL_FAULTENB ; 
 struct cpsw_slot* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cpsw_softc*) ; 
 int FUNC12 (struct cpsw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  cpsw_tx_watchdog ; 
 int /*<<< orphan*/  FUNC14 (struct cpsw_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct cpsw_softc*,TYPE_2__*,struct cpsw_slot*) ; 
 int /*<<< orphan*/  hz ; 

__attribute__((used)) static void
FUNC16(struct cpsw_softc *sc)
{
	struct cpsw_slot *slot;
	uint32_t reg;

	/* Disable the interrupt pacing. */
	reg = FUNC12(sc, CPSW_WR_INT_CONTROL);
	reg &= ~(CPSW_WR_INT_PACE_EN | CPSW_WR_INT_PRESCALE_MASK);
	FUNC14(sc, CPSW_WR_INT_CONTROL, reg);

	/* Clear ALE */
	FUNC14(sc, CPSW_ALE_CONTROL, CPSW_ALE_CTL_CLEAR_TBL);

	/* Enable ALE */
	reg = CPSW_ALE_CTL_ENABLE;
	if (sc->dualemac)
		reg |= CPSW_ALE_CTL_VLAN_AWARE;
	FUNC14(sc, CPSW_ALE_CONTROL, reg);

	/* Set Host Port Mapping. */
	FUNC14(sc, CPSW_PORT_P0_CPDMA_TX_PRI_MAP, 0x76543210);
	FUNC14(sc, CPSW_PORT_P0_CPDMA_RX_CH_MAP, 0);

	/* Initialize ALE: set host port to forwarding(3). */
	FUNC14(sc, FUNC0(0),
	    ALE_PORTCTL_INGRESS | ALE_PORTCTL_FORWARD);

	FUNC14(sc, CPSW_SS_PTYPE, 0);

	/* Enable statistics for ports 0, 1 and 2 */
	FUNC14(sc, CPSW_SS_STAT_PORT_EN, 7);

	/* Turn off flow control. */
	FUNC14(sc, CPSW_SS_FLOW_CONTROL, 0);

	/* Make IP hdr aligned with 4 */
	FUNC14(sc, CPSW_CPDMA_RX_BUFFER_OFFSET, 2);

	/* Initialize RX Buffer Descriptors */
	FUNC14(sc, FUNC4(0), 0);
	FUNC14(sc, FUNC1(0), 0);

	/* Enable TX & RX DMA */
	FUNC14(sc, CPSW_CPDMA_TX_CONTROL, 1);
	FUNC14(sc, CPSW_CPDMA_RX_CONTROL, 1);

	/* Enable Interrupts for core 0 */
	FUNC14(sc, FUNC7(0), 0xFF);
	FUNC14(sc, FUNC6(0), 0xFF);
	FUNC14(sc, FUNC8(0), 0xFF);
	FUNC14(sc, FUNC5(0), 0x1F);

	/* Enable host Error Interrupt */
	FUNC14(sc, CPSW_CPDMA_DMA_INTMASK_SET, 3);

	/* Enable interrupts for RX and TX on Channel 0 */
	FUNC14(sc, CPSW_CPDMA_RX_INTMASK_SET,
	    FUNC2(0) | FUNC3(0));
	FUNC14(sc, CPSW_CPDMA_TX_INTMASK_SET, 1);

	/* Initialze MDIO - ENABLE, PREAMBLE=0, FAULTENB, CLKDIV=0xFF */
	/* TODO Calculate MDCLK=CLK/(CLKDIV+1) */
	FUNC14(sc, MDIOCONTROL, MDIOCTL_ENABLE | MDIOCTL_FAULTENB | 0xff);

	/* Select MII in GMII_SEL, Internal Delay mode */
	//ti_scm_reg_write_4(0x650, 0);

	/* Initialize active queues. */
	slot = FUNC9(&sc->tx.active);
	if (slot != NULL)
		FUNC15(sc, &sc->tx, slot);
	slot = FUNC9(&sc->rx.active);
	if (slot != NULL)
		FUNC15(sc, &sc->rx, slot);
	FUNC13(sc);
	FUNC14(sc, FUNC1(0), sc->rx.active_queue_len);
	FUNC14(sc, FUNC4(0), CPSW_TXFRAGS);

	/* Activate network interface. */
	sc->rx.running = 1;
	sc->tx.running = 1;
	sc->watchdog.timer = 0;
	FUNC10(&sc->watchdog.callout, 0);
	FUNC11(&sc->watchdog.callout, hz, cpsw_tx_watchdog, sc);
}