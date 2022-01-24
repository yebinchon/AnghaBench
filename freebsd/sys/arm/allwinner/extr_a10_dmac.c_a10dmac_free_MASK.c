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
typedef  int /*<<< orphan*/  uint32_t ;
struct a10dmac_softc {int /*<<< orphan*/  sc_mtx; } ;
struct a10dmac_channel {scalar_t__ ch_type; int /*<<< orphan*/ * ch_callbackarg; int /*<<< orphan*/ * ch_callback; int /*<<< orphan*/  ch_index; struct a10dmac_softc* ch_sc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AWIN_DDMA_CTL_DMA_LOADING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AWIN_DMA_IRQ_EN_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AWIN_DMA_IRQ_PEND_STA_REG ; 
 int /*<<< orphan*/  AWIN_NDMA_CTL_DMA_LOADING ; 
 scalar_t__ CH_NDMA ; 
 int /*<<< orphan*/  FUNC2 (struct a10dmac_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct a10dmac_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct a10dmac_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct a10dmac_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(device_t dev, void *priv)
{
	struct a10dmac_channel *ch = priv;
	struct a10dmac_softc *sc = ch->ch_sc;
	uint32_t irqen, sta, cfg;

	FUNC6(&sc->sc_mtx);

	irqen = FUNC2(sc, AWIN_DMA_IRQ_EN_REG);
	cfg = FUNC4(ch);
	if (ch->ch_type == CH_NDMA) {
		sta = FUNC1(ch->ch_index);
		cfg &= ~AWIN_NDMA_CTL_DMA_LOADING;
	} else {
		sta = FUNC0(ch->ch_index);
		cfg &= ~AWIN_DDMA_CTL_DMA_LOADING;
	}
	irqen &= ~sta;
	FUNC5(ch, cfg);
	FUNC3(sc, AWIN_DMA_IRQ_EN_REG, irqen);
	FUNC3(sc, AWIN_DMA_IRQ_PEND_STA_REG, sta);

	ch->ch_callback = NULL;
	ch->ch_callbackarg = NULL;

	FUNC7(&sc->sc_mtx);
}