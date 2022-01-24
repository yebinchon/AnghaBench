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
struct ti_sdma_softc {int sc_active_channels; int /*<<< orphan*/  sc_dev; struct ti_sdma_channel* sc_channel; } ;
struct ti_sdma_channel {int /*<<< orphan*/  callback_data; int /*<<< orphan*/  (* callback ) (unsigned int,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int DMA4_CSR_CLEAR_MASK ; 
 int DMA4_CSR_DROP ; 
 int DMA4_CSR_MISALIGNED_ADRS_ERR ; 
 int DMA4_CSR_SECURE_ERR ; 
 int DMA4_CSR_TRANS_ERR ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int NUM_DMA_CHANNELS ; 
 unsigned int NUM_DMA_IRQS ; 
 int /*<<< orphan*/  FUNC3 (struct ti_sdma_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ti_sdma_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ti_sdma_softc*,int /*<<< orphan*/ ) ; 
 struct ti_sdma_softc* ti_sdma_sc ; 
 int /*<<< orphan*/  FUNC8 (struct ti_sdma_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	struct ti_sdma_softc *sc = ti_sdma_sc;
	uint32_t intr;
	uint32_t csr;
	unsigned int ch, j;
	struct ti_sdma_channel* channel;

	FUNC3(sc);

	for (j = 0; j < NUM_DMA_IRQS; j++) {

		/* Get the flag interrupts (enabled) */
		intr = FUNC7(sc, FUNC2(j));
		intr &= FUNC7(sc, FUNC1(j));
		if (intr == 0x00000000)
			continue;

		/* Loop through checking the status bits */
		for (ch = 0; ch < NUM_DMA_CHANNELS; ch++) {
			if (intr & (1 << ch)) {
				channel = &sc->sc_channel[ch];

				/* Read the CSR regsiter and verify we don't have a spurious IRQ */
				csr = FUNC7(sc, FUNC0(ch));
				if (csr == 0) {
					FUNC5(sc->sc_dev, "Spurious DMA IRQ for channel "
					              "%d\n", ch);
					continue;
				}

				/* Sanity check this channel is active */
				if ((sc->sc_active_channels & (1 << ch)) == 0) {
					FUNC5(sc->sc_dev, "IRQ %d for a non-activated "
					              "channel %d\n", j, ch);
					continue;
				}

				/* Check the status error codes */
				if (csr & DMA4_CSR_DROP)
					FUNC5(sc->sc_dev, "Synchronization event drop "
					              "occurred during the transfer on channel %u\n",
								  ch);
				if (csr & DMA4_CSR_SECURE_ERR)
					FUNC5(sc->sc_dev, "Secure transaction error event "
					              "on channel %u\n", ch);
				if (csr & DMA4_CSR_MISALIGNED_ADRS_ERR)
					FUNC5(sc->sc_dev, "Misaligned address error event "
					              "on channel %u\n", ch);
				if (csr & DMA4_CSR_TRANS_ERR) {
					FUNC5(sc->sc_dev, "Transaction error event on "
					              "channel %u\n", ch);
					/* 
					 * Apparently according to linux code, there is an errata
					 * that says the channel is not disabled upon this error.
					 * They explicitly disable the channel here .. since I
					 * haven't seen the errata, I'm going to ignore for now.
					 */
				}

				/* Clear the status flags for the IRQ */
				FUNC8(sc, FUNC0(ch), DMA4_CSR_CLEAR_MASK);
				FUNC8(sc, FUNC2(j), (1 << ch));

				/* Call the callback for the given channel */
				if (channel->callback)
					channel->callback(ch, csr, channel->callback_data);
			}
		}
	}

	FUNC4(sc);

	return;
}