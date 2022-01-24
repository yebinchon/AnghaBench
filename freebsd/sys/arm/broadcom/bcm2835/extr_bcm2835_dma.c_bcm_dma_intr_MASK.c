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
struct bcm_dma_softc {int /*<<< orphan*/  sc_dma_tag; int /*<<< orphan*/  sc_mem; int /*<<< orphan*/  sc_dev; } ;
struct bcm_dma_ch {int flags; int /*<<< orphan*/  intr_arg; int /*<<< orphan*/  ch; int /*<<< orphan*/  (* intr_func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  dma_map; } ;

/* Variables and functions */
 int BCM_DMA_CH_USED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int CS_END ; 
 int CS_ERR ; 
 int CS_INT ; 
 int DEBUG_ERROR_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bcm_dma_softc* bcm_dma_sc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct bcm_dma_softc *sc = bcm_dma_sc;
	struct bcm_dma_ch *ch = (struct bcm_dma_ch *)arg;
	uint32_t cs, debug;

	/* my interrupt? */
	cs = FUNC4(sc->sc_mem, FUNC0(ch->ch));

	/*
	 * Is it an active channel?  Our diagnostics could be better here, but
	 * it's not necessarily an easy task to resolve a rid/resource to an
	 * actual irq number.  We'd want to do this to set a flag indicating
	 * whether the irq is shared or not, so we know to complain.
	 */
	if (!(ch->flags & BCM_DMA_CH_USED))
		return;

	/* Again, we can't complain here.  The same logic applies. */
	if (!(cs & (CS_INT | CS_ERR)))
		return;

	if (cs & CS_ERR) {
		debug = FUNC4(sc->sc_mem, FUNC1(ch->ch));
		FUNC6(sc->sc_dev, "DMA error %d on CH%d\n",
			debug & DEBUG_ERROR_MASK, ch->ch);
		FUNC5(sc->sc_mem, FUNC1(ch->ch), 
		    debug & DEBUG_ERROR_MASK);
		FUNC2(sc->sc_dev, ch->ch);
	}

	if (cs & CS_INT) {
		/* acknowledge interrupt */
		FUNC5(sc->sc_mem, FUNC0(ch->ch), 
		    CS_INT | CS_END);

		/* Prepare for possible access to len field */
		FUNC3(sc->sc_dma_tag, ch->dma_map,
		    BUS_DMASYNC_POSTWRITE);

		/* save callback function and argument */
		if (ch->intr_func)
			ch->intr_func(ch->ch, ch->intr_arg);
	}
}