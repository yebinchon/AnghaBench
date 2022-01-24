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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct hdmi_softc {int audio_freq; int audio_chans; int hdmi_mode; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * supply_vdd; int /*<<< orphan*/ * supply_pll; int /*<<< orphan*/ * supply_hdmi; int /*<<< orphan*/ * hwreset_hdmi; int /*<<< orphan*/ * clk_hdmi; int /*<<< orphan*/ * clk_parent; int /*<<< orphan*/ * irq_ih; int /*<<< orphan*/  dev; int /*<<< orphan*/  n_tmds_configs; int /*<<< orphan*/  tmds_config; int /*<<< orphan*/  audio_src_type; TYPE_1__ output; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SOURCE_SELECT_AUTO ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct hdmi_softc*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct hdmi_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (struct hdmi_softc*) ; 
 int FUNC12 (struct hdmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hdmi_intr ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tegra124_tmds_config ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct hdmi_softc *sc;
	phandle_t node;
	int rid, rv;

	sc = FUNC9(dev);
	sc->dev = dev;
	sc->output.dev = sc->dev;
	node = FUNC15(sc->dev);

	sc->audio_src_type = SOURCE_SELECT_AUTO;
	sc->audio_freq = 44100;
	sc->audio_chans = 2;
	sc->hdmi_mode = false;

	sc->tmds_config = tegra124_tmds_config;
	sc->n_tmds_configs = FUNC14(tegra124_tmds_config);

	rid = 0;
	sc->mem_res = FUNC2(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC10(dev, "Cannot allocate memory resources\n");
		goto fail;
	}

	rid = 0;
	sc->irq_res = FUNC2(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
	if (sc->irq_res == NULL) {
		FUNC10(dev, "Cannot allocate IRQ resources\n");
		goto fail;
	}

	rv = FUNC5(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, hdmi_intr, sc, &sc->irq_ih);
	if (rv != 0) {
		FUNC10(dev,
		    "WARNING: unable to register interrupt handler\n");
		goto fail;
	}

	rv = FUNC12(sc, node);
	if (rv != 0) {
		FUNC10(dev, "Cannot parse FDT resources\n");
		goto fail;
	}
	rv = FUNC11(sc);
	if (rv != 0) {
		FUNC10(dev, "Cannot enable FDT resources\n");
		goto fail;
	}

	rv = FUNC1(FUNC8(sc->dev), sc->dev);
	if (rv != 0) {
		FUNC10(dev, "Cannot register DRM device\n");
		goto fail;
	}
	return (FUNC3(dev));

fail:
	FUNC0(FUNC8(sc->dev), sc->dev);

	if (sc->irq_ih != NULL)
		FUNC6(dev, sc->irq_res, sc->irq_ih);
	if (sc->clk_parent != NULL)
		FUNC7(sc->clk_parent);
	if (sc->clk_hdmi != NULL)
		FUNC7(sc->clk_hdmi);
	if (sc->hwreset_hdmi != NULL)
		FUNC13(sc->hwreset_hdmi);
	if (sc->supply_hdmi != NULL)
		FUNC16(sc->supply_hdmi);
	if (sc->supply_pll != NULL)
		FUNC16(sc->supply_pll);
	if (sc->supply_vdd != NULL)
		FUNC16(sc->supply_vdd);
	if (sc->irq_res != NULL)
		FUNC4(dev, SYS_RES_IRQ, 0, sc->irq_res);
	if (sc->mem_res != NULL)
		FUNC4(dev, SYS_RES_MEMORY, 0, sc->mem_res);
	return (ENXIO);
}