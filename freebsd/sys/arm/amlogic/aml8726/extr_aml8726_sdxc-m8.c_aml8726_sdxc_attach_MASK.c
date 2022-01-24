#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_7__ {int f_min; int f_max; int host_ocr; int caps; } ;
struct TYPE_6__ {int /*<<< orphan*/ * dev; scalar_t__ pol; scalar_t__ pin; } ;
struct TYPE_5__ {int pol; int /*<<< orphan*/ * dev; scalar_t__ pin; } ;
struct TYPE_8__ {scalar_t__ pin; int /*<<< orphan*/ * dev; scalar_t__ pol; } ;
struct aml8726_sdxc_softc {int auto_fill_flush; int* voltages; int /*<<< orphan*/ * res; scalar_t__ dmatag; scalar_t__ dmamap; scalar_t__ ih_cookie; TYPE_3__ host; int /*<<< orphan*/  mtx; int /*<<< orphan*/  ch; TYPE_2__ card_rst; TYPE_1__ vselect; TYPE_4__ pwr_en; scalar_t__ ref_freq; int /*<<< orphan*/  dev; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  prop ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  scalar_t__ pcell_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AML_SDXC_ALIGN_DMA ; 
 int AML_SDXC_ENH_CNTRL_DMA_NO_WR_RESP_CHECK_M8 ; 
 int /*<<< orphan*/  AML_SDXC_ENH_CNTRL_REG ; 
 int AML_SDXC_ENH_CNTRL_RX_FULL_THOLD_SHIFT ; 
 int AML_SDXC_ENH_CNTRL_RX_TIMEOUT_SHIFT_M8 ; 
 int AML_SDXC_ENH_CNTRL_SDIO_IRQ_PERIOD_SHIFT ; 
 int AML_SDXC_ENH_CNTRL_WR_RESP_MODE_SKIP_M8M2 ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_sdxc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_sdxc_softc*) ; 
 int /*<<< orphan*/  AML_SDXC_MAX_DMA ; 
 int /*<<< orphan*/  AML_SDXC_MISC_REG ; 
 int AML_SDXC_MISC_TXSTART_THOLD_SHIFT ; 
 int AML_SDXC_MISC_WCRC_ERR_PAT_SHIFT ; 
 int AML_SDXC_MISC_WCRC_OK_PAT_SHIFT ; 
 int AML_SDXC_PDMA_DMA_URGENT ; 
 int AML_SDXC_PDMA_RD_BURST_SHIFT ; 
 int /*<<< orphan*/  AML_SDXC_PDMA_REG ; 
 int AML_SDXC_PDMA_RX_THOLD_SHIFT ; 
 int AML_SDXC_PDMA_TX_THOLD_SHIFT ; 
 int AML_SDXC_PDMA_WR_BURST_SHIFT ; 
#define  AML_SOC_HW_REV_M8 130 
#define  AML_SOC_HW_REV_M8B 129 
#define  AML_SOC_M8_METAL_REV_M2_A 128 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  CALLOUT_RETURNUNLOCKED ; 
 int /*<<< orphan*/  FUNC2 (struct aml8726_sdxc_softc*,int /*<<< orphan*/ ,int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int MMC_CAP_4_BIT_DATA ; 
 int MMC_CAP_8_BIT_DATA ; 
 int MMC_CAP_HSPEED ; 
 int MMC_OCR_320_330 ; 
 int MMC_OCR_330_340 ; 
 int MMC_OCR_LOW_VOLTAGE ; 
 void* FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,void**) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  aml8726_sdxc_intr ; 
 scalar_t__ FUNC9 (struct aml8726_sdxc_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct aml8726_sdxc_softc*) ; 
 int /*<<< orphan*/  aml8726_sdxc_spec ; 
 int aml8726_soc_hw_rev ; 
 int /*<<< orphan*/  aml8726_soc_metal_rev ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int FUNC14 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct aml8726_sdxc_softc*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int) ; 
 struct aml8726_sdxc_softc* FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC27(device_t dev)
{
	struct aml8726_sdxc_softc *sc = FUNC22(dev);
	char *voltages;
	char *voltage;
	int error;
	int nvoltages;
	pcell_t prop[3];
	phandle_t node;
	ssize_t len;
	device_t child;
	uint32_t ectlr;
	uint32_t miscr;
	uint32_t pdmar;

	sc->dev = dev;

	sc->auto_fill_flush = false;

	pdmar = AML_SDXC_PDMA_DMA_URGENT |
	    (49 << AML_SDXC_PDMA_TX_THOLD_SHIFT) |
	    (7 << AML_SDXC_PDMA_RX_THOLD_SHIFT) |
	    (15 << AML_SDXC_PDMA_RD_BURST_SHIFT) |
	    (7 << AML_SDXC_PDMA_WR_BURST_SHIFT);

	miscr = (2 << AML_SDXC_MISC_WCRC_OK_PAT_SHIFT) |
	    (5 << AML_SDXC_MISC_WCRC_ERR_PAT_SHIFT);

	ectlr = (12 << AML_SDXC_ENH_CNTRL_SDIO_IRQ_PERIOD_SHIFT);

	/*
	 * Certain bitfields are dependent on the hardware revision.
	 */
	switch (aml8726_soc_hw_rev) {
	case AML_SOC_HW_REV_M8:
		switch (aml8726_soc_metal_rev) {
		case AML_SOC_M8_METAL_REV_M2_A:
			sc->auto_fill_flush = true;
			miscr |= (6 << AML_SDXC_MISC_TXSTART_THOLD_SHIFT);
			ectlr |= (64 << AML_SDXC_ENH_CNTRL_RX_FULL_THOLD_SHIFT) |
			    AML_SDXC_ENH_CNTRL_WR_RESP_MODE_SKIP_M8M2;
			break;
		default:
			miscr |= (7 << AML_SDXC_MISC_TXSTART_THOLD_SHIFT);
			ectlr |= (63 << AML_SDXC_ENH_CNTRL_RX_FULL_THOLD_SHIFT) |
			    AML_SDXC_ENH_CNTRL_DMA_NO_WR_RESP_CHECK_M8 |
			    (255 << AML_SDXC_ENH_CNTRL_RX_TIMEOUT_SHIFT_M8);

			break;
		}
		break;
	case AML_SOC_HW_REV_M8B:
		miscr |= (7 << AML_SDXC_MISC_TXSTART_THOLD_SHIFT);
		ectlr |= (63 << AML_SDXC_ENH_CNTRL_RX_FULL_THOLD_SHIFT) |
		    AML_SDXC_ENH_CNTRL_DMA_NO_WR_RESP_CHECK_M8 |
		    (255 << AML_SDXC_ENH_CNTRL_RX_TIMEOUT_SHIFT_M8);
		break;
	default:
		FUNC23(dev, "unsupported SoC\n");
		return (ENXIO);
		/* NOTREACHED */
	}

	node = FUNC25(dev);

	len = FUNC6(node, "clock-frequency", prop, sizeof(prop));
	if ((len / sizeof(prop[0])) != 1 || prop[0] == 0) {
		FUNC23(dev,
		    "missing clock-frequency attribute in FDT\n");
		return (ENXIO);
	}

	sc->ref_freq = prop[0];

	sc->pwr_en.dev = NULL;

	len = FUNC6(node, "mmc-pwr-en", prop, sizeof(prop));
	if (len > 0) {
		if ((len / sizeof(prop[0])) == 3) {
			sc->pwr_en.dev = FUNC5(prop[0]);
			sc->pwr_en.pin = prop[1];
			sc->pwr_en.pol = prop[2];
		}

		if (sc->pwr_en.dev == NULL) {
			FUNC23(dev,
			    "unable to process mmc-pwr-en attribute in FDT\n");
			return (ENXIO);
		}

		/* Turn off power and then configure the output driver. */
		if (FUNC9(sc) != 0 ||
		    FUNC4(sc->pwr_en.dev, sc->pwr_en.pin,
		    GPIO_PIN_OUTPUT) != 0) {
			FUNC23(dev,
			    "could not use gpio to control power\n");
			return (ENXIO);
		}
	}

	len = FUNC7(node, "mmc-voltages",
	    (void **)&voltages);

	if (len < 0) {
		FUNC23(dev, "missing mmc-voltages attribute in FDT\n");
		return (ENXIO);
	}

	sc->voltages[0] = 0;
	sc->voltages[1] = 0;

	voltage = voltages;
	nvoltages = 0;

	while (len && nvoltages < 2) {
		if (FUNC26("1.8", voltage, len) == 0)
			sc->voltages[nvoltages] = MMC_OCR_LOW_VOLTAGE;
		else if (FUNC26("3.3", voltage, len) == 0)
			sc->voltages[nvoltages] = MMC_OCR_320_330 |
			    MMC_OCR_330_340;
		else {
			FUNC23(dev,
			    "unknown voltage attribute %.*s in FDT\n",
			    len, voltage);
			FUNC8(voltages);
			return (ENXIO);
		}

		nvoltages++;

		/* queue up next string */
		while (*voltage && len) {
			voltage++;
			len--;
		}
		if (len) {
			voltage++;
			len--;
		}
	}

	FUNC8(voltages);

	sc->vselect.dev = NULL;

	len = FUNC6(node, "mmc-vselect", prop, sizeof(prop));
	if (len > 0) {
		if ((len / sizeof(prop[0])) == 2) {
			sc->vselect.dev = FUNC5(prop[0]);
			sc->vselect.pin = prop[1];
			sc->vselect.pol = 1;
		}

		if (sc->vselect.dev == NULL) {
			FUNC23(dev,
			    "unable to process mmc-vselect attribute in FDT\n");
			return (ENXIO);
		}

		/*
		 * With the power off select voltage 0 and then
		 * configure the output driver.
		 */
		if (FUNC3(sc->vselect.dev, sc->vselect.pin, 0) != 0 ||
		    FUNC4(sc->vselect.dev, sc->vselect.pin,
		    GPIO_PIN_OUTPUT) != 0) {
			FUNC23(dev,
			    "could not use gpio to set voltage\n");
			return (ENXIO);
		}
	}

	if (nvoltages == 0) {
		FUNC23(dev, "no voltages in FDT\n");
		return (ENXIO);
	} else if (nvoltages == 1 && sc->vselect.dev != NULL) {
		FUNC23(dev, "only one voltage in FDT\n");
		return (ENXIO);
	} else if (nvoltages == 2 && sc->vselect.dev == NULL) {
		FUNC23(dev, "too many voltages in FDT\n");
		return (ENXIO);
	}

	sc->card_rst.dev = NULL;

	len = FUNC6(node, "mmc-rst", prop, sizeof(prop));
	if (len > 0) {
		if ((len / sizeof(prop[0])) == 3) {
			sc->card_rst.dev = FUNC5(prop[0]);
			sc->card_rst.pin = prop[1];
			sc->card_rst.pol = prop[2];
		}

		if (sc->card_rst.dev == NULL) {
			FUNC23(dev,
			    "unable to process mmc-rst attribute in FDT\n");
			return (ENXIO);
		}
	}

	if (FUNC11(dev, aml8726_sdxc_spec, sc->res)) {
		FUNC23(dev, "could not allocate resources for device\n");
		return (ENXIO);
	}

	FUNC1(sc);

	error = FUNC12(FUNC16(dev), AML_SDXC_ALIGN_DMA, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    AML_SDXC_MAX_DMA, 1, AML_SDXC_MAX_DMA, 0, NULL, NULL, &sc->dmatag);
	if (error)
		goto fail;

	error = FUNC14(sc->dmatag, 0, &sc->dmamap);

	if (error)
		goto fail;

	error = FUNC18(dev, sc->res[1], INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, aml8726_sdxc_intr, sc, &sc->ih_cookie);
	if (error) {
		FUNC23(dev, "could not setup interrupt handler\n");
		goto fail;
	}

	FUNC20(&sc->ch, &sc->mtx, CALLOUT_RETURNUNLOCKED);

	sc->host.f_min = 200000;
	sc->host.f_max = 100000000;
	sc->host.host_ocr = sc->voltages[0] | sc->voltages[1];
	sc->host.caps = MMC_CAP_8_BIT_DATA | MMC_CAP_4_BIT_DATA |
	    MMC_CAP_HSPEED;

	FUNC10(sc);

	FUNC2(sc, AML_SDXC_PDMA_REG, pdmar);

	FUNC2(sc, AML_SDXC_MISC_REG, miscr);

	FUNC2(sc, AML_SDXC_ENH_CNTRL_REG, ectlr);

	child = FUNC21(dev, "mmc", -1);

	if (!child) {
		FUNC23(dev, "could not add mmc\n");
		error = ENXIO;
		goto fail;
	}

	error = FUNC24(child);

	if (error) {
		FUNC23(dev, "could not attach mmc\n");
		goto fail;
	}

	return (0);

fail:
	if (sc->ih_cookie)
		FUNC19(dev, sc->res[1], sc->ih_cookie);

	if (sc->dmamap)
		FUNC15(sc->dmatag, sc->dmamap);

	if (sc->dmatag)
		FUNC13(sc->dmatag);

	FUNC0(sc);

	(void)FUNC9(sc);

	FUNC17(dev, aml8726_sdxc_spec, sc->res);

	return (error);
}