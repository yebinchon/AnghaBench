#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_3__ {int ac_bias; int dma_burst_sz; int bpp; int fdd; int sync_ctrl; scalar_t__ sync_edge; scalar_t__ ac_bias_intrpt; } ;
struct am335x_lcd_softc {int sc_backlight; int /*<<< orphan*/  sc_hdmi_evh; int /*<<< orphan*/  sc_oid; int /*<<< orphan*/  sc_dev; void* sc_mem_res; void* sc_irq_res; int /*<<< orphan*/  sc_intr_hl; TYPE_1__ sc_panel; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int ENXIO ; 
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct am335x_lcd_softc*,int /*<<< orphan*/ ) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  LCDC_CLK ; 
 int /*<<< orphan*/  FUNC1 (struct am335x_lcd_softc*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  PWM_PERIOD ; 
 int /*<<< orphan*/  PWM_UNIT ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct am335x_lcd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC5 (struct am335x_lcd_softc*) ; 
 int /*<<< orphan*/  am335x_lcd_hdmi_event ; 
 int /*<<< orphan*/  am335x_lcd_intr ; 
 int /*<<< orphan*/  am335x_lcd_sysctl_backlight ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct am335x_lcd_softc*,int /*<<< orphan*/ *) ; 
 struct am335x_lcd_softc* FUNC13 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC14 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int FUNC17 (int,char*,int) ; 
 int /*<<< orphan*/  hdmi_event ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	struct am335x_lcd_softc *sc;

	int err;
	int rid;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree;
	phandle_t root, panel_node;

	err = 0;
	sc = FUNC13(dev);
	sc->sc_dev = dev;

	FUNC7(dev);

	root = FUNC2("/");
	if (root == -1) {
		FUNC16(dev, "failed to get FDT root node\n");
		return (ENXIO);
	}

	sc->sc_panel.ac_bias = 255;
	sc->sc_panel.ac_bias_intrpt = 0;
	sc->sc_panel.dma_burst_sz = 16;
	sc->sc_panel.bpp = 16;
	sc->sc_panel.fdd = 128;
	sc->sc_panel.sync_edge = 0;
	sc->sc_panel.sync_ctrl = 1;

	panel_node = FUNC17(root, "ti,tilcdc,panel", 1);
	if (panel_node != 0) {
		FUNC16(dev, "using static panel info\n");
		if (FUNC8(dev, panel_node, &sc->sc_panel)) {
			FUNC16(dev, "failed to read panel info\n");
			return (ENXIO);
		}

		if (FUNC9(dev, panel_node, &sc->sc_panel)) {
			FUNC16(dev, "failed to read timings\n");
			return (ENXIO);
		}
	}

	FUNC18(LCDC_CLK);

	rid = 0;
	sc->sc_mem_res = FUNC10(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->sc_mem_res) {
		FUNC16(dev, "cannot allocate memory window\n");
		return (ENXIO);
	}

	rid = 0;
	sc->sc_irq_res = FUNC10(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (!sc->sc_irq_res) {
		FUNC11(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
		FUNC16(dev, "cannot allocate interrupt\n");
		return (ENXIO);
	}

	if (FUNC12(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
			NULL, am335x_lcd_intr, sc,
			&sc->sc_intr_hl) != 0) {
		FUNC11(dev, SYS_RES_IRQ, rid,
		    sc->sc_irq_res);
		FUNC11(dev, SYS_RES_MEMORY, rid,
		    sc->sc_mem_res);
		FUNC16(dev, "Unable to setup the irq handler.\n");
		return (ENXIO);
	}

	FUNC1(sc);

	/* Init backlight interface */
	ctx = FUNC14(sc->sc_dev);
	tree = FUNC15(sc->sc_dev);
	sc->sc_oid = FUNC3(ctx, FUNC4(tree), OID_AUTO,
	    "backlight", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
	    am335x_lcd_sysctl_backlight, "I", "LCD backlight");
	sc->sc_backlight = 0;
	/* Check if eCAS interface is available at this point */
	if (FUNC6(PWM_UNIT,
	    PWM_PERIOD, PWM_PERIOD) == 0)
		sc->sc_backlight = 100;

	if (panel_node != 0)
		FUNC5(sc);
	else
		sc->sc_hdmi_evh = FUNC0(hdmi_event,
		    am335x_lcd_hdmi_event, sc, EVENTHANDLER_PRI_ANY);

	return (0);
}