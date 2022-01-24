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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int host_ocr; int caps; void* f_max; void* f_min; } ;
struct TYPE_4__ {int pol; int /*<<< orphan*/ * dev; scalar_t__ pin; } ;
struct TYPE_6__ {scalar_t__ pin; int /*<<< orphan*/ * dev; scalar_t__ pol; } ;
struct aml8726_mmc_softc {scalar_t__ ref_freq; int* voltages; int /*<<< orphan*/ * res; scalar_t__ dmatag; scalar_t__ dmamap; scalar_t__ ih_cookie; TYPE_2__ host; int /*<<< orphan*/  mtx; int /*<<< orphan*/  ch; TYPE_1__ vselect; TYPE_3__ pwr_en; int /*<<< orphan*/  port; int /*<<< orphan*/  dev; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  prop ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  scalar_t__ pcell_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AML_MMC_ALIGN_DMA ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_mmc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_mmc_softc*) ; 
 int /*<<< orphan*/  AML_MMC_MAX_DMA ; 
 int /*<<< orphan*/  AML_MMC_MULT_CONFIG_PORT_A ; 
 int /*<<< orphan*/  AML_MMC_MULT_CONFIG_PORT_B ; 
 int /*<<< orphan*/  AML_MMC_MULT_CONFIG_PORT_C ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  CALLOUT_RETURNUNLOCKED ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int MMC_CAP_4_BIT_DATA ; 
 int MMC_CAP_HSPEED ; 
 int MMC_OCR_320_330 ; 
 int MMC_OCR_330_340 ; 
 int MMC_OCR_LOW_VOLTAGE ; 
 void* FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,void**) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct aml8726_mmc_softc*,int) ; 
 void* FUNC11 (struct aml8726_mmc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aml8726_mmc_intr ; 
 scalar_t__ FUNC12 (struct aml8726_mmc_softc*) ; 
 int /*<<< orphan*/  aml8726_mmc_spec ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int FUNC16 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct aml8726_mmc_softc*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,int) ; 
 struct aml8726_mmc_softc* FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC29(device_t dev)
{
	struct aml8726_mmc_softc *sc = FUNC24(dev);
	char *function_name;
	char *voltages;
	char *voltage;
	int error;
	int nvoltages;
	pcell_t prop[3];
	phandle_t node;
	ssize_t len;
	device_t child;

	sc->dev = dev;

	node = FUNC27(dev);

	sc->ref_freq = FUNC9(node);

	if (sc->ref_freq == 0) {
		FUNC25(dev, "missing clocks attribute in FDT\n");
		return (ENXIO);
	}

	/*
	 * The pins must be specified as part of the device in order
	 * to know which port to used.
	 */

	len = FUNC5(node, "pinctrl-0", prop, sizeof(prop));

	if ((len / sizeof(prop[0])) != 1 || prop[0] == 0) {
		FUNC25(dev, "missing pinctrl-0 attribute in FDT\n");
		return (ENXIO);
	}

	len = FUNC6(FUNC7(prop[0]), "amlogic,function",
	    (void **)&function_name);

	if (len < 0) {
		FUNC25(dev,
		    "missing amlogic,function attribute in FDT\n");
		return (ENXIO);
	}

	if (FUNC28("sdio-a", function_name, len) == 0)
		sc->port = AML_MMC_MULT_CONFIG_PORT_A;
	else if (FUNC28("sdio-b", function_name, len) == 0)
		sc->port = AML_MMC_MULT_CONFIG_PORT_B;
	else if (FUNC28("sdio-c", function_name, len) == 0)
		sc->port = AML_MMC_MULT_CONFIG_PORT_C;
	else {
		FUNC25(dev, "unknown function attribute %.*s in FDT\n",
		    len, function_name);
		FUNC8(function_name);
		return (ENXIO);
	}

	FUNC8(function_name);

	sc->pwr_en.dev = NULL;

	len = FUNC5(node, "mmc-pwr-en", prop, sizeof(prop));
	if (len > 0) {
		if ((len / sizeof(prop[0])) == 3) {
			sc->pwr_en.dev = FUNC4(prop[0]);
			sc->pwr_en.pin = prop[1];
			sc->pwr_en.pol = prop[2];
		}

		if (sc->pwr_en.dev == NULL) {
			FUNC25(dev,
			    "unable to process mmc-pwr-en attribute in FDT\n");
			return (ENXIO);
		}

		/* Turn off power and then configure the output driver. */
		if (FUNC12(sc) != 0 ||
		    FUNC3(sc->pwr_en.dev, sc->pwr_en.pin,
		    GPIO_PIN_OUTPUT) != 0) {
			FUNC25(dev,
			    "could not use gpio to control power\n");
			return (ENXIO);
		}
	}

	len = FUNC6(node, "mmc-voltages",
	    (void **)&voltages);

	if (len < 0) {
		FUNC25(dev, "missing mmc-voltages attribute in FDT\n");
		return (ENXIO);
	}

	sc->voltages[0] = 0;
	sc->voltages[1] = 0;

	voltage = voltages;
	nvoltages = 0;

	while (len && nvoltages < 2) {
		if (FUNC28("1.8", voltage, len) == 0)
			sc->voltages[nvoltages] = MMC_OCR_LOW_VOLTAGE;
		else if (FUNC28("3.3", voltage, len) == 0)
			sc->voltages[nvoltages] = MMC_OCR_320_330 |
			    MMC_OCR_330_340;
		else {
			FUNC25(dev,
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

	len = FUNC5(node, "mmc-vselect", prop, sizeof(prop));
	if (len > 0) {
		if ((len / sizeof(prop[0])) == 2) {
			sc->vselect.dev = FUNC4(prop[0]);
			sc->vselect.pin = prop[1];
			sc->vselect.pol = 1;
		}

		if (sc->vselect.dev == NULL) {
			FUNC25(dev,
			  "unable to process mmc-vselect attribute in FDT\n");
			return (ENXIO);
		}

		/*
		 * With the power off select voltage 0 and then
		 * configure the output driver.
		 */
		if (FUNC2(sc->vselect.dev, sc->vselect.pin, 0) != 0 ||
		    FUNC3(sc->vselect.dev, sc->vselect.pin,
		    GPIO_PIN_OUTPUT) != 0) {
			FUNC25(dev,
			    "could not use gpio to set voltage\n");
			return (ENXIO);
		}
	}

	if (nvoltages == 0) {
		FUNC25(dev, "no voltages in FDT\n");
		return (ENXIO);
	} else if (nvoltages == 1 && sc->vselect.dev != NULL) {
		FUNC25(dev, "only one voltage in FDT\n");
		return (ENXIO);
	} else if (nvoltages == 2 && sc->vselect.dev == NULL) {
		FUNC25(dev, "too many voltages in FDT\n");
		return (ENXIO);
	}

	if (FUNC13(dev, aml8726_mmc_spec, sc->res)) {
		FUNC25(dev, "could not allocate resources for device\n");
		return (ENXIO);
	}

	FUNC1(sc);

	error = FUNC14(FUNC18(dev), AML_MMC_ALIGN_DMA, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    AML_MMC_MAX_DMA, 1, AML_MMC_MAX_DMA, 0, NULL, NULL, &sc->dmatag);
	if (error)
		goto fail;

	error = FUNC16(sc->dmatag, 0, &sc->dmamap);

	if (error)
		goto fail;

	error = FUNC20(dev, sc->res[1], INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, aml8726_mmc_intr, sc, &sc->ih_cookie);
	if (error) {
		FUNC25(dev, "could not setup interrupt handler\n");
		goto fail;
	}

	FUNC22(&sc->ch, &sc->mtx, CALLOUT_RETURNUNLOCKED);

	sc->host.f_min = FUNC11(sc, FUNC10(sc, 200000));
	sc->host.f_max = FUNC11(sc, FUNC10(sc, 50000000));
	sc->host.host_ocr = sc->voltages[0] | sc->voltages[1];
	sc->host.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_HSPEED;

	child = FUNC23(dev, "mmc", -1);

	if (!child) {
		FUNC25(dev, "could not add mmc\n");
		error = ENXIO;
		goto fail;
	}

	error = FUNC26(child);

	if (error) {
		FUNC25(dev, "could not attach mmc\n");
		goto fail;
	}

	return (0);

fail:
	if (sc->ih_cookie)
		FUNC21(dev, sc->res[1], sc->ih_cookie);

	if (sc->dmamap)
		FUNC17(sc->dmatag, sc->dmamap);

	if (sc->dmatag)
		FUNC15(sc->dmatag);

	FUNC0(sc);

	FUNC12(sc);

	FUNC19(dev, aml8726_mmc_spec, sc->res);

	return (error);
}