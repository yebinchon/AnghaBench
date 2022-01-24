#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int caps; } ;
struct TYPE_6__ {TYPE_1__ host; int /*<<< orphan*/  quirks; int /*<<< orphan*/  max_clk; } ;
struct ti_sdhci_softc {scalar_t__ mmchs_clk_id; int disable_highspeed; int disable_readonly; int force_card_present; void* mem_res; void* irq_res; scalar_t__ intr_cookie; TYPE_2__ slot; int /*<<< orphan*/  baseclk_hz; int /*<<< orphan*/  dev; int /*<<< orphan*/  gpio; scalar_t__ mmchs_reg_off; scalar_t__ sdhci_reg_off; } ;
typedef  int /*<<< orphan*/  prop ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ AM335X_MMCHS_REG_OFFSET ; 
#define  CHIP_AM335X 129 
#define  CHIP_OMAP_4 128 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 scalar_t__ INVALID_CLK_IDENT ; 
 scalar_t__ MMC1_CLK ; 
 int MMC_CAP_4_BIT_DATA ; 
 int MMC_CAP_8_BIT_DATA ; 
 int MMC_OCR_290_300 ; 
 int MMC_OCR_300_310 ; 
 int MMC_OCR_LOW_VOLTAGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ OMAP4_MMCHS_REG_OFFSET ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SDHCI_QUIRK_BROKEN_DMA ; 
 int /*<<< orphan*/  SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK ; 
 int /*<<< orphan*/  SDHCI_QUIRK_DONT_SHIFT_RESPONSE ; 
 int /*<<< orphan*/  SDHCI_QUIRK_WAITFOR_RESET_ASSERTED ; 
 int /*<<< orphan*/  SDHCI_QUIRK_WAIT_WHILE_BUSY ; 
 scalar_t__ SDHCI_REG_OFFSET ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ti_sdhci_softc*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 struct ti_sdhci_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int FUNC15 () ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ti_sdhci_intr ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct ti_sdhci_softc *sc = FUNC8(dev);
	int rid, err;
	pcell_t prop;
	phandle_t node;

	sc->dev = dev;

	/*
	 * Get the MMCHS device id from FDT.  If it's not there use the newbus
	 * unit number (which will work as long as the devices are in order and
	 * none are skipped in the fdt).  Note that this is a property we made
	 * up and added in freebsd, it doesn't exist in the published bindings.
	 */
	node = FUNC10(dev);
	sc->mmchs_clk_id = FUNC16(dev);
	if (sc->mmchs_clk_id == INVALID_CLK_IDENT) {
		FUNC9(dev, "failed to get clock based on hwmods property\n");
	}

	/*
	 * The hardware can inherently do dual-voltage (1p8v, 3p0v) on the first
	 * device, and only 1p8v on other devices unless an external transceiver
	 * is used.  The only way we could know about a transceiver is fdt data.
	 * Note that we have to do this before calling ti_sdhci_hw_init() so
	 * that it can set the right values in the CAPA register.
	 */
	sc->slot.host.caps |= MMC_OCR_LOW_VOLTAGE;
	if (sc->mmchs_clk_id == MMC1_CLK || FUNC1(node, "ti,dual-volt")) {
		sc->slot.host.caps |= MMC_OCR_290_300 | MMC_OCR_300_310;
	}

	/*
	 * Set the offset from the device's memory start to the MMCHS registers.
	 * Also for OMAP4 disable high speed mode due to erratum ID i626.
	 */
	switch (FUNC15()) {
#ifdef SOC_OMAP4
	case CHIP_OMAP_4:
		sc->mmchs_reg_off = OMAP4_MMCHS_REG_OFFSET;
		sc->disable_highspeed = true;
		break;
#endif
#ifdef SOC_TI_AM335X
	case CHIP_AM335X:
		sc->mmchs_reg_off = AM335X_MMCHS_REG_OFFSET;
		break;
#endif
	default:
		FUNC11("Unknown OMAP device\n");
	}

	/*
	 * The standard SDHCI registers are at a fixed offset (the same on all
	 * SoCs) beyond the MMCHS registers.
	 */
	sc->sdhci_reg_off = sc->mmchs_reg_off + SDHCI_REG_OFFSET;

	/* Resource setup. */
	rid = 0;
	sc->mem_res = FUNC2(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->mem_res) {
		FUNC9(dev, "cannot allocate memory window\n");
		err = ENXIO;
		goto fail;
	}

	rid = 0;
	sc->irq_res = FUNC2(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (!sc->irq_res) {
		FUNC9(dev, "cannot allocate interrupt\n");
		err = ENXIO;
		goto fail;
	}

	if (FUNC6(dev, sc->irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, ti_sdhci_intr, sc, &sc->intr_cookie)) {
		FUNC9(dev, "cannot setup interrupt handler\n");
		err = ENXIO;
		goto fail;
	}

	/*
	 * Set up handling of card-detect and write-protect gpio lines.
	 *
	 * If there is no write protect info in the fdt data, fall back to the
	 * historical practice of assuming that the card is writable.  This
	 * works around bad fdt data from the upstream source.  The alternative
	 * would be to trust the sdhci controller's PRESENT_STATE register WP
	 * bit, but it may say write protect is in effect when it's not if the
	 * pinmux setup doesn't route the WP signal into the sdchi block.
	 */
	sc->gpio = FUNC12(sc->dev, &sc->slot);

	if (!FUNC1(node, "wp-gpios") && !FUNC1(node, "wp-disable"))
		sc->disable_readonly = true;

	/* Initialise the MMCHS hardware. */
	FUNC17(dev);

	/*
	 * The capabilities register can only express base clock frequencies in
	 * the range of 0-63MHz for a v2.0 controller.  Since our clock runs
	 * faster than that, the hardware sets the frequency to zero in the
	 * register.  When the register contains zero, the sdhci driver expects
	 * slot.max_clk to already have the right value in it.
	 */
	sc->slot.max_clk = sc->baseclk_hz;

	/*
	 * The MMCHS timeout counter is based on the output sdclock.  Tell the
	 * sdhci driver to recalculate the timeout clock whenever the output
	 * sdclock frequency changes.
	 */
	sc->slot.quirks |= SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK;

	/*
	 * The MMCHS hardware shifts the 136-bit response data (in violation of
	 * the spec), so tell the sdhci driver not to do the same in software.
	 */
	sc->slot.quirks |= SDHCI_QUIRK_DONT_SHIFT_RESPONSE;

	/*
	 * Reset bits are broken, have to wait to see the bits asserted
	 * before waiting to see them de-asserted.
	 */
	sc->slot.quirks |= SDHCI_QUIRK_WAITFOR_RESET_ASSERTED;
	
	/*
	 * The controller waits for busy responses.
	 */
	sc->slot.quirks |= SDHCI_QUIRK_WAIT_WHILE_BUSY;

	/*
	 * DMA is not really broken, I just haven't implemented it yet.
	 */
	sc->slot.quirks |= SDHCI_QUIRK_BROKEN_DMA;

	/*
	 *  Set up the hardware and go.  Note that this sets many of the
	 *  slot.host.* fields, so we have to do this before overriding any of
	 *  those values based on fdt data, below.
	 */
	FUNC13(dev, &sc->slot, 0);

	/*
	 * The SDHCI controller doesn't realize it, but we can support 8-bit
	 * even though we're not a v3.0 controller.  If there's an fdt bus-width
	 * property, honor it.
	 */
	if (FUNC0(node, "bus-width", &prop, sizeof(prop)) > 0) {
		sc->slot.host.caps &= ~(MMC_CAP_4_BIT_DATA | 
		    MMC_CAP_8_BIT_DATA);
		switch (prop) {
		case 8:
			sc->slot.host.caps |= MMC_CAP_8_BIT_DATA;
			/* FALLTHROUGH */
		case 4:
			sc->slot.host.caps |= MMC_CAP_4_BIT_DATA;
			break;
		case 1:
			break;
		default:
			FUNC9(dev, "Bad bus-width value %u\n", prop);
			break;
		}
	}

	/*
	 * If the slot is flagged with the non-removable property, set our flag
	 * to always force the SDHCI_CARD_PRESENT bit on.
	 */
	node = FUNC10(dev);
	if (FUNC1(node, "non-removable"))
		sc->force_card_present = true;

	FUNC4(dev);
	FUNC3(dev);

	FUNC14(&sc->slot);
	return (0);

fail:
	if (sc->intr_cookie)
		FUNC7(dev, sc->irq_res, sc->intr_cookie);
	if (sc->irq_res)
		FUNC5(dev, SYS_RES_IRQ, 0, sc->irq_res);
	if (sc->mem_res)
		FUNC5(dev, SYS_RES_MEMORY, 0, sc->mem_res);

	return (err);
}