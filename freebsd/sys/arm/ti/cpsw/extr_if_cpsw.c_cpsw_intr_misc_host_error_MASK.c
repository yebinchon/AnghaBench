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
struct TYPE_4__ {int /*<<< orphan*/  active; } ;
struct TYPE_3__ {int /*<<< orphan*/  active; } ;
struct cpsw_softc {TYPE_2__ rx; TYPE_1__ tx; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPSW_CPDMA_DMASTATUS ; 
 int /*<<< orphan*/  CPSW_CPDMA_DMA_INTMASK_CLEAR ; 
 int /*<<< orphan*/  CPSW_CPDMA_DMA_INTSTAT_MASKED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpsw_softc*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct cpsw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cpsw_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static void
FUNC11(struct cpsw_softc *sc)
{
	uint32_t intstat;
	uint32_t dmastat;
	int txerr, rxerr, txchan, rxchan;

	FUNC10("\n\n");
	FUNC8(sc->dev,
	    "HOST ERROR:  PROGRAMMING ERROR DETECTED BY HARDWARE\n");
	FUNC10("\n\n");
	intstat = FUNC6(sc, CPSW_CPDMA_DMA_INTSTAT_MASKED);
	FUNC8(sc->dev, "CPSW_CPDMA_DMA_INTSTAT_MASKED=0x%x\n", intstat);
	dmastat = FUNC6(sc, CPSW_CPDMA_DMASTATUS);
	FUNC8(sc->dev, "CPSW_CPDMA_DMASTATUS=0x%x\n", dmastat);

	txerr = (dmastat >> 20) & 15;
	txchan = (dmastat >> 16) & 7;
	rxerr = (dmastat >> 12) & 15;
	rxchan = (dmastat >> 8) & 7;

	switch (txerr) {
	case 0: break;
	case 1:	FUNC10("SOP error on TX channel %d\n", txchan);
		break;
	case 2:	FUNC10("Ownership bit not set on SOP buffer on TX channel %d\n", txchan);
		break;
	case 3:	FUNC10("Zero Next Buffer but not EOP on TX channel %d\n", txchan);
		break;
	case 4:	FUNC10("Zero Buffer Pointer on TX channel %d\n", txchan);
		break;
	case 5:	FUNC10("Zero Buffer Length on TX channel %d\n", txchan);
		break;
	case 6:	FUNC10("Packet length error on TX channel %d\n", txchan);
		break;
	default: FUNC10("Unknown error on TX channel %d\n", txchan);
		break;
	}

	if (txerr != 0) {
		FUNC10("CPSW_CPDMA_TX%d_HDP=0x%x\n",
		    txchan, FUNC6(sc, FUNC3(txchan)));
		FUNC10("CPSW_CPDMA_TX%d_CP=0x%x\n",
		    txchan, FUNC6(sc, FUNC2(txchan)));
		FUNC5(sc, &sc->tx.active);
	}

	switch (rxerr) {
	case 0: break;
	case 2:	FUNC10("Ownership bit not set on RX channel %d\n", rxchan);
		break;
	case 4:	FUNC10("Zero Buffer Pointer on RX channel %d\n", rxchan);
		break;
	case 5:	FUNC10("Zero Buffer Length on RX channel %d\n", rxchan);
		break;
	case 6:	FUNC10("Buffer offset too big on RX channel %d\n", rxchan);
		break;
	default: FUNC10("Unknown RX error on RX channel %d\n", rxchan);
		break;
	}

	if (rxerr != 0) {
		FUNC10("CPSW_CPDMA_RX%d_HDP=0x%x\n",
		    rxchan, FUNC6(sc,FUNC1(rxchan)));
		FUNC10("CPSW_CPDMA_RX%d_CP=0x%x\n",
		    rxchan, FUNC6(sc, FUNC0(rxchan)));
		FUNC5(sc, &sc->rx.active);
	}

	FUNC10("\nALE Table\n");
	FUNC4(sc);

	// XXX do something useful here??
	FUNC9("CPSW HOST ERROR INTERRUPT");

	// Suppress this interrupt in the future.
	FUNC7(sc, CPSW_CPDMA_DMA_INTMASK_CLEAR, intstat);
	FUNC10("XXX HOST ERROR INTERRUPT SUPPRESSED\n");
	// The watchdog will probably reset the controller
	// in a little while.  It will probably fail again.
}