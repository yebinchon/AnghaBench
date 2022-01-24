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
struct ti_sdma_softc {int sc_active_channels; int sc_hw_rev; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/ * sc_mem_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  DMA4_OCP_SYSCONFIG ; 
 int /*<<< orphan*/  DMA4_REVISION ; 
 int /*<<< orphan*/  DMA4_SYSSTATUS ; 
 int EINVAL ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 unsigned int NUM_DMA_IRQS ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SDMA_CLK ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (struct ti_sdma_softc*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ti_sdma_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ti_sdma_intr ; 
 scalar_t__ FUNC10 (struct ti_sdma_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ti_sdma_softc*) ; 
 int FUNC12 (struct ti_sdma_softc*,int /*<<< orphan*/ ) ; 
 struct ti_sdma_softc* ti_sdma_sc ; 
 int /*<<< orphan*/  FUNC13 (struct ti_sdma_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct ti_sdma_softc *sc = FUNC5(dev);
	unsigned int timeout;
	unsigned int i;
	int      rid;
	void    *ihl;
	int      err;

	/* Setup the basics */
	sc->sc_dev = dev;

	/* No channels active at the moment */
	sc->sc_active_channels = 0x00000000;

	/* Mutex to protect the shared data structures */
	FUNC1(sc);

	/* Get the memory resource for the register mapping */
	rid = 0;
	sc->sc_mem_res = FUNC2(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (sc->sc_mem_res == NULL)
		FUNC7("%s: Cannot map registers", FUNC4(dev));

	/* Enable the interface and functional clocks */
	FUNC9(SDMA_CLK);

	/* Read the sDMA revision register and sanity check it's known */
	sc->sc_hw_rev = FUNC12(sc, DMA4_REVISION);
	FUNC6(dev, "sDMA revision %08x\n", sc->sc_hw_rev);

	if (!FUNC11(sc) && !FUNC10(sc)) {
		FUNC6(sc->sc_dev, "error - unknown sDMA H/W revision\n");
		return (EINVAL);
	}

	/* Disable all interrupts */
	for (i = 0; i < NUM_DMA_IRQS; i++) {
		FUNC13(sc, FUNC0(i), 0x00000000);
	}

	/* Soft-reset is only supported on pre-OMAP44xx devices */
	if (FUNC10(sc)) {

		/* Soft-reset */
		FUNC13(sc, DMA4_OCP_SYSCONFIG, 0x0002);

		/* Set the timeout to 100ms*/
		timeout = (hz < 10) ? 1 : ((100 * hz) / 1000);

		/* Wait for DMA reset to complete */
		while ((FUNC12(sc, DMA4_SYSSTATUS) & 0x1) == 0x0) {

			/* Sleep for a tick */
			FUNC8("DMARESET", 1);

			if (timeout-- == 0) {
				FUNC6(sc->sc_dev, "sDMA reset operation timed out\n");
				return (EINVAL);
			}
		}
	}

	/* 
	 * Install interrupt handlers for the for possible interrupts. Any channel
	 * can trip one of the four IRQs
	 */
	rid = 0;
	sc->sc_irq_res = FUNC2(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (sc->sc_irq_res == NULL)
		FUNC7("Unable to setup the dma irq handler.\n");

	err = FUNC3(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, ti_sdma_intr, NULL, &ihl);
	if (err)
		FUNC7("%s: Cannot register IRQ", FUNC4(dev));

	/* Store the DMA structure globally ... this driver should never be unloaded */
	ti_sdma_sc = sc;

	return (0);
}