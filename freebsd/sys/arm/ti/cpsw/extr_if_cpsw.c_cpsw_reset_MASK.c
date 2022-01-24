#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  callout; } ;
struct cpsw_softc {TYPE_1__ watchdog; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPSW_CPDMA_RX_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CPSW_CPDMA_RX_INTMASK_CLEAR ; 
 int /*<<< orphan*/  CPSW_CPDMA_SOFT_RESET ; 
 int /*<<< orphan*/  CPSW_CPDMA_TX_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  CPSW_CPDMA_TX_INTMASK_CLEAR ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  CPSW_SS_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  CPSW_WR_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct cpsw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cpsw_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC12(struct cpsw_softc *sc)
{
	int i;

	FUNC9(&sc->watchdog.callout);

	/* Reset RMII/RGMII wrapper. */
	FUNC11(sc, CPSW_WR_SOFT_RESET, 1);
	while (FUNC10(sc, CPSW_WR_SOFT_RESET) & 1)
		;

	/* Disable TX and RX interrupts for all cores. */
	for (i = 0; i < 3; ++i) {
		FUNC11(sc, FUNC7(i), 0x00);
		FUNC11(sc, FUNC8(i), 0x00);
		FUNC11(sc, FUNC6(i), 0x00);
		FUNC11(sc, FUNC5(i), 0x00);
	}

	/* Reset CPSW subsystem. */
	FUNC11(sc, CPSW_SS_SOFT_RESET, 1);
	while (FUNC10(sc, CPSW_SS_SOFT_RESET) & 1)
		;

	/* Reset Sliver port 1 and 2 */
	for (i = 0; i < 2; i++) {
		/* Reset */
		FUNC11(sc, FUNC4(i), 1);
		while (FUNC10(sc, FUNC4(i)) & 1)
			;
	}

	/* Reset DMA controller. */
	FUNC11(sc, CPSW_CPDMA_SOFT_RESET, 1);
	while (FUNC10(sc, CPSW_CPDMA_SOFT_RESET) & 1)
		;

	/* Disable TX & RX DMA */
	FUNC11(sc, CPSW_CPDMA_TX_CONTROL, 0);
	FUNC11(sc, CPSW_CPDMA_RX_CONTROL, 0);

	/* Clear all queues. */
	for (i = 0; i < 8; i++) {
		FUNC11(sc, FUNC3(i), 0);
		FUNC11(sc, FUNC1(i), 0);
		FUNC11(sc, FUNC2(i), 0);
		FUNC11(sc, FUNC0(i), 0);
	}

	/* Clear all interrupt Masks */
	FUNC11(sc, CPSW_CPDMA_RX_INTMASK_CLEAR, 0xFFFFFFFF);
	FUNC11(sc, CPSW_CPDMA_TX_INTMASK_CLEAR, 0xFFFFFFFF);
}