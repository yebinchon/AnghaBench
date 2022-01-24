#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_4__ {int quirks; int max_clk; int caps; } ;
struct tegra_sdhci_softc {int max_clk; int quirks; int caps; int force_card_present; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * reset; int /*<<< orphan*/ * clk; int /*<<< orphan*/ * gpio_power; int /*<<< orphan*/ * intr_cookie; int /*<<< orphan*/ * gpio; TYPE_1__ slot; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  prop ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SET_ROUND_DOWN ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int MMC_CAP_4_BIT_DATA ; 
 int MMC_CAP_8_BIT_DATA ; 
 scalar_t__ FUNC0 (int,char*,int*,int) ; 
 scalar_t__ FUNC1 (int,char*) ; 
 int FUNC2 (struct tegra_sdhci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SDHCI_CAPABILITIES ; 
 int SDHCI_CLOCK_V3_BASE_MASK ; 
 int SDHCI_QUIRK_BROKEN_TIMEOUT_VAL ; 
 int SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK ; 
 int SDHCI_QUIRK_MISSING_CAPS ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tegra_sdhci_softc*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC11 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct tegra_sdhci_softc* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 int /*<<< orphan*/  tegra_sdhci_intr ; 

__attribute__((used)) static int
FUNC26(device_t dev)
{
	struct tegra_sdhci_softc *sc;
	int rid, rv;
	uint64_t freq;
	phandle_t node, prop;

	sc = FUNC14(dev);
	sc->dev = dev;
	node = FUNC21(dev);

	rid = 0;
	sc->mem_res = FUNC3(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->mem_res) {
		FUNC15(dev, "cannot allocate memory window\n");
		rv = ENXIO;
		goto fail;
	}

	rid = 0;
	sc->irq_res = FUNC3(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (!sc->irq_res) {
		FUNC15(dev, "cannot allocate interrupt\n");
		rv = ENXIO;
		goto fail;
	}

	if (FUNC7(dev, sc->irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, tegra_sdhci_intr, sc, &sc->intr_cookie)) {
		FUNC15(dev, "cannot setup interrupt handler\n");
		rv = ENXIO;
		goto fail;
	}

	rv = FUNC19(sc->dev, 0, "sdhci", &sc->reset);
	if (rv != 0) {
		FUNC15(sc->dev, "Cannot get 'sdhci' reset\n");
		goto fail;
	}
	rv = FUNC18(sc->reset);
	if (rv != 0) {
		FUNC15(dev, "Cannot unreset 'sdhci' reset\n");
		goto fail;
	}

	FUNC16(sc->dev, node, "power-gpios", &sc->gpio_power);

	rv = FUNC10(dev, 0, 0, &sc->clk);
	if (rv != 0) {
		FUNC15(dev, "Cannot get clock\n");
		goto fail;
	}
	rv = FUNC9(sc->clk);
	if (rv != 0) {
		FUNC15(dev, "Cannot enable clock\n");
		goto fail;
	}
	rv = FUNC13(sc->clk, 48000000, CLK_SET_ROUND_DOWN);
	if (rv != 0) {
		FUNC15(dev, "Cannot set clock\n");
	}
	rv = FUNC11(sc->clk, &freq);
	if (rv != 0) {
		FUNC15(dev, "Cannot get clock frequency\n");
		goto fail;
	}
	if (bootverbose)
		FUNC15(dev, " Base MMC clock: %lld\n", freq);

	/* Fill slot information. */
	sc->max_clk = (int)freq;
	sc->quirks |= SDHCI_QUIRK_BROKEN_TIMEOUT_VAL |
	    SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK |
	    SDHCI_QUIRK_MISSING_CAPS;

	/* Limit real slot capabilities. */
	sc->caps = FUNC2(sc, SDHCI_CAPABILITIES);
	if (FUNC0(node, "bus-width", &prop, sizeof(prop)) > 0) {
		sc->caps &= ~(MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA);
		switch (prop) {
		case 8:
			sc->caps |= MMC_CAP_8_BIT_DATA;
			/* FALLTHROUGH */
		case 4:
			sc->caps |= MMC_CAP_4_BIT_DATA;
			break;
		case 1:
			break;
		default:
			FUNC15(dev, "Bad bus-width value %u\n", prop);
			break;
		}
	}
	if (FUNC1(node, "non-removable"))
		sc->force_card_present = 1;
	/*
	 * Clear clock field, so SDHCI driver uses supplied frequency.
	 * in sc->slot.max_clk
	 */
	sc->caps &= ~SDHCI_CLOCK_V3_BASE_MASK;

	sc->slot.quirks = sc->quirks;
	sc->slot.max_clk = sc->max_clk;
	sc->slot.caps = sc->caps;

	rv = FUNC24(dev, &sc->slot, 0);
	if (rv != 0) {
		goto fail;
	}

	sc->gpio = FUNC22(sc->dev, &sc->slot);

	FUNC5(dev);
	FUNC4(dev);

	FUNC25(&sc->slot);

	return (0);

fail:
	if (sc->gpio != NULL)
		FUNC23(sc->gpio);
	if (sc->intr_cookie != NULL)
		FUNC8(dev, sc->irq_res, sc->intr_cookie);
	if (sc->gpio_power != NULL)
		FUNC17(sc->gpio_power);
	if (sc->clk != NULL)
		FUNC12(sc->clk);
	if (sc->reset != NULL)
		FUNC20(sc->reset);
	if (sc->irq_res != NULL)
		FUNC6(dev, SYS_RES_IRQ, 0, sc->irq_res);
	if (sc->mem_res != NULL)
		FUNC6(dev, SYS_RES_MEMORY, 0, sc->mem_res);

	return (rv);
}