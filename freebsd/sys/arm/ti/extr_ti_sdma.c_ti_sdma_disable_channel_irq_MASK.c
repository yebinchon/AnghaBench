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
typedef  int uint32_t ;
struct ti_sdma_softc {int sc_active_channels; TYPE_1__* sc_channel; } ;
struct TYPE_2__ {int reg_cicr; int need_reg_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 unsigned int NUM_DMA_IRQS ; 
 int /*<<< orphan*/  FUNC2 (struct ti_sdma_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ti_sdma_softc*) ; 
 int FUNC4 (struct ti_sdma_softc*,int /*<<< orphan*/ ) ; 
 struct ti_sdma_softc* ti_sdma_sc ; 
 int /*<<< orphan*/  FUNC5 (struct ti_sdma_softc*,int /*<<< orphan*/ ,int) ; 

int
FUNC6(unsigned int ch)
{
	struct ti_sdma_softc *sc = ti_sdma_sc;
	uint32_t irq_enable;
	unsigned int j;

	/* Sanity check */
	if (sc == NULL)
		return (ENOMEM);

	FUNC2(sc);

	if ((sc->sc_active_channels & (1 << ch)) == 0) {
		FUNC3(sc);
		return (EINVAL);
	}

	/* Disable all the individual error conditions */
	sc->sc_channel[ch].reg_cicr = 0x0000;
	FUNC5(sc, FUNC0(ch), 0x0000);

	/* Disable the channel interrupt enable */
	for (j = 0; j < NUM_DMA_IRQS; j++) {
		irq_enable = FUNC4(sc, FUNC1(j));
		irq_enable &= ~(1 << ch);

		FUNC5(sc, FUNC1(j), irq_enable);
	}

	/* Indicate the registers need to be rewritten on the next transaction */
	sc->sc_channel[ch].need_reg_write = 1;

	FUNC3(sc);

	return (0);
}