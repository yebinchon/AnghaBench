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
struct a10dmac_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_res; int /*<<< orphan*/  sc_ih; TYPE_1__* sc_ddma_channels; TYPE_1__* sc_ndma_channels; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  clk_t ;
struct TYPE_2__ {unsigned int ch_index; int /*<<< orphan*/  ch_regoff; int /*<<< orphan*/ * ch_callbackarg; int /*<<< orphan*/ * ch_callback; int /*<<< orphan*/  ch_type; struct a10dmac_softc* ch_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AWIN_DDMA_CTL_REG ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  AWIN_DMA_IRQ_EN_REG ; 
 int /*<<< orphan*/  AWIN_DMA_IRQ_PEND_STA_REG ; 
 int /*<<< orphan*/  AWIN_NDMA_CTL_REG ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  CH_DDMA ; 
 int /*<<< orphan*/  CH_NDMA ; 
 unsigned int DDMA_CHANNELS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct a10dmac_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 unsigned int NDMA_CHANNELS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  a10dmac_intr ; 
 int /*<<< orphan*/  a10dmac_spec ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct a10dmac_softc*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct a10dmac_softc* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct a10dmac_softc *sc;
	unsigned int index;
	clk_t clk;
	int error;

	sc = FUNC11(dev);

	if (FUNC6(dev, a10dmac_spec, sc->sc_res)) {
		FUNC12(dev, "cannot allocate resources for device\n");
		return (ENXIO);
	}

	FUNC14(&sc->sc_mtx, "a10 dmac", NULL, MTX_SPIN);

	/* Activate DMA controller clock */
	error = FUNC10(dev, 0, 0, &clk);
	if (error != 0) {
		FUNC12(dev, "cannot get clock\n");
		return (error);
	}
	error = FUNC9(clk);
	if (error != 0) {
		FUNC12(dev, "cannot enable clock\n");
		return (error);
	}

	/* Disable all interrupts and clear pending status */
	FUNC3(sc, AWIN_DMA_IRQ_EN_REG, 0);
	FUNC3(sc, AWIN_DMA_IRQ_PEND_STA_REG, ~0);

	/* Initialize channels */
	for (index = 0; index < NDMA_CHANNELS; index++) {
		sc->sc_ndma_channels[index].ch_sc = sc;
		sc->sc_ndma_channels[index].ch_index = index;
		sc->sc_ndma_channels[index].ch_type = CH_NDMA;
		sc->sc_ndma_channels[index].ch_callback = NULL;
		sc->sc_ndma_channels[index].ch_callbackarg = NULL;
		sc->sc_ndma_channels[index].ch_regoff = FUNC1(index);
		FUNC2(&sc->sc_ndma_channels[index], AWIN_NDMA_CTL_REG, 0);
	}
	for (index = 0; index < DDMA_CHANNELS; index++) {
		sc->sc_ddma_channels[index].ch_sc = sc;
		sc->sc_ddma_channels[index].ch_index = index;
		sc->sc_ddma_channels[index].ch_type = CH_DDMA;
		sc->sc_ddma_channels[index].ch_callback = NULL;
		sc->sc_ddma_channels[index].ch_callbackarg = NULL;
		sc->sc_ddma_channels[index].ch_regoff = FUNC0(index);
		FUNC2(&sc->sc_ddma_channels[index], AWIN_DDMA_CTL_REG, 0);
	}

	error = FUNC8(dev, sc->sc_res[1], INTR_MPSAFE | INTR_TYPE_MISC,
	    NULL, a10dmac_intr, sc, &sc->sc_ih);
	if (error != 0) {
		FUNC12(dev, "could not setup interrupt handler\n");
		FUNC7(dev, a10dmac_spec, sc->sc_res);
		FUNC13(&sc->sc_mtx);
		return (ENXIO);
	}

	FUNC4(FUNC5(FUNC15(dev)), dev);
	return (0);
}