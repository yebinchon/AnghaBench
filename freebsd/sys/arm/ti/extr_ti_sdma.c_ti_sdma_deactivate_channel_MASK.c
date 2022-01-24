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
struct ti_sdma_softc {int sc_active_channels; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 int DMA4_CSR_CLEAR_MASK ; 
 unsigned int FUNC4 (unsigned int) ; 
 int EBUSY ; 
 int ENOMEM ; 
 unsigned int NUM_DMA_IRQS ; 
 int /*<<< orphan*/  FUNC5 (struct ti_sdma_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_sdma_softc*) ; 
 struct ti_sdma_softc* ti_sdma_sc ; 
 int /*<<< orphan*/  FUNC7 (struct ti_sdma_softc*,unsigned int,int) ; 

int
FUNC8(unsigned int ch)
{
	struct ti_sdma_softc *sc = ti_sdma_sc;
	unsigned int j;
	unsigned int addr;

	/* Sanity check */
	if (sc == NULL)
		return (ENOMEM);

	FUNC5(sc);

	/* First check if the channel is currently active */
	if ((sc->sc_active_channels & (1 << ch)) == 0) {
		FUNC6(sc);
		return (EBUSY);
	}

	/* Mark the channel as inactive */
	sc->sc_active_channels &= ~(1 << ch);

	/* Disable all DMA interrupts for the channel. */
	FUNC7(sc, FUNC1(ch), 0);

	/* Make sure the DMA transfer is stopped. */
	FUNC7(sc, FUNC0(ch), 0);

	/* Clear the CSR register and IRQ status register */
	FUNC7(sc, FUNC3(ch), DMA4_CSR_CLEAR_MASK);
	for (j = 0; j < NUM_DMA_IRQS; j++) {
		FUNC7(sc, FUNC4(j), (1 << ch));
	}

	/* Clear all the channel registers, this should abort any transaction */
	for (addr = FUNC0(ch); addr <= FUNC2(ch); addr += 4)
		FUNC7(sc, addr, 0x00000000);

	FUNC6(sc);

	return 0;
}