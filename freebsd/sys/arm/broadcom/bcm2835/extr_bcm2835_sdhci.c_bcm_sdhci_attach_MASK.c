#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_int ;
struct TYPE_5__ {int caps; int /*<<< orphan*/  quirks; int /*<<< orphan*/  opt; } ;
struct bcm_sdhci_softc {scalar_t__ sc_dma_ch; void* sc_mem_res; void* sc_irq_res; scalar_t__ sc_intrhand; TYPE_1__ sc_slot; void* cmd_and_mode; void* blksz_and_count; scalar_t__ sc_sdhci_buffer_phys; int /*<<< orphan*/  sc_dma_map; int /*<<< orphan*/  sc_dma_tag; struct bcm_mmc_conf* conf; int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; int /*<<< orphan*/ * clkman; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/ * sc_req; } ;
struct bcm_mmc_conf {int default_freq; scalar_t__ clock_src; scalar_t__ use_dma; int /*<<< orphan*/  quirks; int /*<<< orphan*/  clock_id; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cell ;
struct TYPE_6__ {scalar_t__ ocd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_MBOX_POWER_ID_EMMC ; 
 int /*<<< orphan*/  BCM_DMA_CH_ANY ; 
 scalar_t__ BCM_DMA_CH_INVALID ; 
 int /*<<< orphan*/  BCM_SDHCI_BUFFER_SIZE ; 
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int EINVAL ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  NUM_DMA_SEGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SDHCI_BLOCK_SIZE ; 
 scalar_t__ SDHCI_BUFFER ; 
 int SDHCI_CAN_DO_HISPD ; 
 int SDHCI_CAN_VDD_180 ; 
 int SDHCI_CAN_VDD_330 ; 
 int SDHCI_CLOCK_BASE_SHIFT ; 
 int /*<<< orphan*/  SDHCI_PLATFORM_TRANSFER ; 
 void* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDHCI_TRANSFER_MODE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bcm2835_sdhci_hs ; 
 int /*<<< orphan*/  bcm2835_sdhci_pio_mode ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,struct bcm_sdhci_softc*) ; 
 int /*<<< orphan*/  bcm_sdhci_dma_intr ; 
 int /*<<< orphan*/  bcm_sdhci_intr ; 
 scalar_t__ bootverbose ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bcm_sdhci_softc*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bcm_sdhci_softc* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (void*) ; 
 int /*<<< orphan*/  FUNC23 (void*) ; 
 scalar_t__ FUNC24 (void*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC27(device_t dev)
{
	struct bcm_sdhci_softc *sc = FUNC18(dev);
	int rid, err;
	phandle_t node;
	pcell_t cell;
	u_int default_freq;

	sc->sc_dev = dev;
	sc->sc_req = NULL;

	sc->conf = (struct bcm_mmc_conf *)FUNC21(dev,
	    compat_data)->ocd_data;
	if (sc->conf == 0)
	    return (ENXIO);

	err = FUNC4(BCM2835_MBOX_POWER_ID_EMMC, TRUE);
	if (err != 0) {
		if (bootverbose)
			FUNC19(dev, "Unable to enable the power\n");
		return (err);
	}

	default_freq = 0;
	err = FUNC3(sc->conf->clock_id, &default_freq);
	if (err == 0) {
		/* Convert to MHz */
		default_freq /= 1000000;
	}
	if (default_freq == 0) {
		node = FUNC20(sc->sc_dev);
		if ((FUNC0(node, "clock-frequency", &cell,
		    sizeof(cell))) > 0)
			default_freq = cell / 1000000;
	}
	if (default_freq == 0)
		default_freq = sc->conf->default_freq;

	if (bootverbose)
		FUNC19(dev, "SDHCI frequency: %dMHz\n", default_freq);
#ifdef NOTYET
	if (sc->conf->clock_src > 0) {
		uint32_t f;
		sc->clkman = devclass_get_device(devclass_find("bcm2835_clkman"), 0);
		if (sc->clkman == NULL) {
			device_printf(dev, "cannot find Clock Manager\n");
			return (ENXIO);
		}

		f = bcm2835_clkman_set_frequency(sc->clkman, sc->conf->clock_src, default_freq);
		if (f == 0)
			return (EINVAL);

		if (bootverbose)
			device_printf(dev, "Clock source frequency: %dMHz\n", f);
	}
#endif

	rid = 0;
	sc->sc_mem_res = FUNC7(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->sc_mem_res) {
		FUNC19(dev, "cannot allocate memory window\n");
		err = ENXIO;
		goto fail;
	}

	sc->sc_bst = FUNC23(sc->sc_mem_res);
	sc->sc_bsh = FUNC22(sc->sc_mem_res);

	rid = 0;
	sc->sc_irq_res = FUNC7(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (!sc->sc_irq_res) {
		FUNC19(dev, "cannot allocate interrupt\n");
		err = ENXIO;
		goto fail;
	}

	if (FUNC14(dev, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, bcm_sdhci_intr, sc, &sc->sc_intrhand)) {
		FUNC19(dev, "cannot setup interrupt handler\n");
		err = ENXIO;
		goto fail;
	}

	if (!bcm2835_sdhci_pio_mode)
		sc->sc_slot.opt = SDHCI_PLATFORM_TRANSFER;

	sc->sc_slot.caps = SDHCI_CAN_VDD_330 | SDHCI_CAN_VDD_180;
	if (bcm2835_sdhci_hs)
		sc->sc_slot.caps |= SDHCI_CAN_DO_HISPD;
	sc->sc_slot.caps |= (default_freq << SDHCI_CLOCK_BASE_SHIFT);
	sc->sc_slot.quirks = sc->conf->quirks;
 
	FUNC25(dev, &sc->sc_slot, 0);

	if (sc->conf->use_dma) {
		sc->sc_dma_ch = FUNC5(BCM_DMA_CH_ANY);
		if (sc->sc_dma_ch == BCM_DMA_CH_INVALID)
			goto fail;

		if (FUNC6(sc->sc_dma_ch, bcm_sdhci_dma_intr, sc) != 0) {
			FUNC19(dev, "cannot setup dma interrupt handler\n");
			err = ENXIO;
			goto fail;
		}

		/* Allocate bus_dma resources. */
		err = FUNC8(FUNC12(dev),
		    1, 0, BUS_SPACE_MAXADDR_32BIT,
		    BUS_SPACE_MAXADDR, NULL, NULL,
		    BCM_SDHCI_BUFFER_SIZE, NUM_DMA_SEGS, BCM_SDHCI_BUFFER_SIZE,
		    BUS_DMA_ALLOCNOW, NULL, NULL,
		    &sc->sc_dma_tag);

		if (err) {
			FUNC19(dev, "failed allocate DMA tag");
			goto fail;
		}

		err = FUNC9(sc->sc_dma_tag, 0, &sc->sc_dma_map);
		if (err) {
			FUNC19(dev, "bus_dmamap_create failed\n");
			goto fail;
		}
	}

	/* FIXME: Fix along with other BUS_SPACE_PHYSADDR instances */
	sc->sc_sdhci_buffer_phys = FUNC24(sc->sc_mem_res) +
	    SDHCI_BUFFER;

	FUNC11(dev);
	FUNC10(dev);

	FUNC26(&sc->sc_slot);

	/* Seed our copies. */
	sc->blksz_and_count = FUNC1(dev, &sc->sc_slot, SDHCI_BLOCK_SIZE);
	sc->cmd_and_mode = FUNC1(dev, &sc->sc_slot, SDHCI_TRANSFER_MODE);

	return (0);

fail:
	if (sc->sc_intrhand)
		FUNC15(dev, sc->sc_irq_res, sc->sc_intrhand);
	if (sc->sc_irq_res)
		FUNC13(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
	if (sc->sc_mem_res)
		FUNC13(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);

	return (err);
}