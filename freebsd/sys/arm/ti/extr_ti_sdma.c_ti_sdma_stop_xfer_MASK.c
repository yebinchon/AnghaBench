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
struct ti_sdma_softc {int sc_active_channels; TYPE_1__* sc_channel; } ;
struct TYPE_2__ {int need_reg_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int DMA4_CSR_CLEAR_MASK ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 unsigned int NUM_DMA_IRQS ; 
 int /*<<< orphan*/  FUNC4 (struct ti_sdma_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ti_sdma_softc*) ; 
 struct ti_sdma_softc* ti_sdma_sc ; 
 int /*<<< orphan*/  FUNC6 (struct ti_sdma_softc*,int /*<<< orphan*/ ,int) ; 

int
FUNC7(unsigned int ch)
{
	struct ti_sdma_softc *sc = ti_sdma_sc;
	unsigned int j;

	/* Sanity check */
	if (sc == NULL)
		return (ENOMEM);

	FUNC4(sc);

	if ((sc->sc_active_channels & (1 << ch)) == 0) {
		FUNC5(sc);
		return (EINVAL);
	}

	/* Disable all DMA interrupts for the channel. */
	FUNC6(sc, FUNC1(ch), 0);

	/* Make sure the DMA transfer is stopped. */
	FUNC6(sc, FUNC0(ch), 0);

	/* Clear the CSR register and IRQ status register */
	FUNC6(sc, FUNC2(ch), DMA4_CSR_CLEAR_MASK);
	for (j = 0; j < NUM_DMA_IRQS; j++) {
		FUNC6(sc, FUNC3(j), (1 << ch));
	}

	/* Configuration registers need to be re-written on the next xfer */
	sc->sc_channel[ch].need_reg_write = 1;

	FUNC5(sc);

	return (0);
}