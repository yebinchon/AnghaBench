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
struct bcm_dma_softc {TYPE_1__* sc_dma_ch; int /*<<< orphan*/  sc_mem; } ;
struct bcm_dma_cb {int /*<<< orphan*/  info; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct bcm_dma_cb* cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int BCM_DMA_CH_MAX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int CS_ABORT ; 
 int CS_ACTIVE ; 
 int CS_END ; 
 int CS_INT ; 
 int CS_ISPAUSED ; 
 int /*<<< orphan*/  INFO_WAIT_RESP ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm_dma_cb*,int) ; 
 struct bcm_dma_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC8(device_t dev, int ch)
{
	struct bcm_dma_softc *sc = FUNC6(dev);
	struct bcm_dma_cb *cb;
	uint32_t cs;
	int count;

	if (ch < 0 || ch >= BCM_DMA_CH_MAX)
		return;

	cs = FUNC3(sc->sc_mem, FUNC2(ch));

	if (cs & CS_ACTIVE) {
		/* pause current task */
		FUNC4(sc->sc_mem, FUNC2(ch), 0);

		count = 1000;
		do {
			cs = FUNC3(sc->sc_mem, FUNC2(ch));
		} while (!(cs & CS_ISPAUSED) && (count-- > 0));

		if (!(cs & CS_ISPAUSED)) {
			FUNC7(dev,
			    "Can't abort DMA transfer at channel %d\n", ch);
		}

		FUNC4(sc->sc_mem, FUNC1(ch), 0);

		/* Complete everything, clear interrupt */
		FUNC4(sc->sc_mem, FUNC2(ch),
		    CS_ABORT | CS_INT | CS_END| CS_ACTIVE);
	}

	/* clear control blocks */
	FUNC4(sc->sc_mem, FUNC0(ch), 0);
	FUNC4(sc->sc_mem, FUNC1(ch), 0);

	/* Reset control block */
	cb = sc->sc_dma_ch[ch].cb;
	FUNC5(cb, sizeof(*cb));
	cb->info = INFO_WAIT_RESP;
}