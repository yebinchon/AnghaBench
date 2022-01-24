#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_3__ {int f_min; int f_max; int host_ocr; int caps; } ;
struct aw_mmc_softc {int aw_timeout; int /*<<< orphan*/ * devq; int /*<<< orphan*/  sim_mtx; int /*<<< orphan*/ * sim; int /*<<< orphan*/ * aw_res; int /*<<< orphan*/  aw_intrhand; int /*<<< orphan*/  aw_mtx; int /*<<< orphan*/  aw_timeoutc; int /*<<< orphan*/ * aw_dev; int /*<<< orphan*/ * ccb; TYPE_1__ aw_host; int /*<<< orphan*/ * aw_reg_vqmmc; int /*<<< orphan*/ * aw_reg_vmmc; int /*<<< orphan*/  aw_clk_mmc; int /*<<< orphan*/  aw_clk_ahb; int /*<<< orphan*/  aw_rst_ahb; int /*<<< orphan*/ * aw_req; struct aw_mmc_conf* aw_mmc_conf; } ;
struct aw_mmc_conf {int dummy; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_4__ {scalar_t__ ocd_data; } ;

/* Variables and functions */
 size_t AW_MMC_IRQRES ; 
 int /*<<< orphan*/  CARD_ID_FREQUENCY ; 
 int /*<<< orphan*/  CLK_SET_ROUND_DOWN ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int MMC_CAP_4_BIT_DATA ; 
 int MMC_CAP_8_BIT_DATA ; 
 int MMC_CAP_HSPEED ; 
 int MMC_CAP_MMC_DDR52 ; 
 int MMC_CAP_SIGNALING_180 ; 
 int MMC_CAP_SIGNALING_330 ; 
 int MMC_CAP_UHS_DDR50 ; 
 int MMC_CAP_UHS_SDR12 ; 
 int MMC_CAP_UHS_SDR25 ; 
 int MMC_CAP_UHS_SDR50 ; 
 int MMC_OCR_320_330 ; 
 int MMC_OCR_330_340 ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid_list* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aw_mmc_cam_action ; 
 int /*<<< orphan*/  aw_mmc_cam_poll ; 
 int /*<<< orphan*/  aw_mmc_intr ; 
 int /*<<< orphan*/  aw_mmc_res_spec ; 
 scalar_t__ FUNC3 (struct aw_mmc_softc*) ; 
 scalar_t__ FUNC4 (struct aw_mmc_softc*) ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct aw_mmc_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct aw_mmc_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC21 (int /*<<< orphan*/ *) ; 
 struct aw_mmc_softc* FUNC22 (int /*<<< orphan*/ *) ; 
 struct sysctl_ctx_list* FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ *) ; 
 int FUNC27 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC34 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC38 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC39(device_t dev)
{
	device_t child;
	struct aw_mmc_softc *sc;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *tree;
	uint32_t bus_width, max_freq;
	phandle_t node;
	int error;

	node = FUNC33(dev);
	sc = FUNC22(dev);
	sc->aw_dev = dev;

	sc->aw_mmc_conf = (struct aw_mmc_conf *)FUNC34(dev, compat_data)->ocd_data;

#ifndef MMCCAM
	sc->aw_req = NULL;
#endif
	if (FUNC5(dev, aw_mmc_res_spec, sc->aw_res) != 0) {
		FUNC25(dev, "cannot allocate device resources\n");
		return (ENXIO);
	}
	if (FUNC7(dev, sc->aw_res[AW_MMC_IRQRES],
	    INTR_TYPE_MISC | INTR_MPSAFE, NULL, aw_mmc_intr, sc,
	    &sc->aw_intrhand)) {
		FUNC6(dev, aw_mmc_res_spec, sc->aw_res);
		FUNC25(dev, "cannot setup interrupt handler\n");
		return (ENXIO);
	}
	FUNC30(&sc->aw_mtx, FUNC21(sc->aw_dev), "aw_mmc",
	    MTX_DEF);
	FUNC10(&sc->aw_timeoutc, &sc->aw_mtx, 0);

	/* De-assert reset */
	if (FUNC28(dev, 0, "ahb", &sc->aw_rst_ahb) == 0) {
		error = FUNC27(sc->aw_rst_ahb);
		if (error != 0) {
			FUNC25(dev, "cannot de-assert reset\n");
			goto fail;
		}
	}

	/* Activate the module clock. */
	error = FUNC17(dev, 0, "ahb", &sc->aw_clk_ahb);
	if (error != 0) {
		FUNC25(dev, "cannot get ahb clock\n");
		goto fail;
	}
	error = FUNC16(sc->aw_clk_ahb);
	if (error != 0) {
		FUNC25(dev, "cannot enable ahb clock\n");
		goto fail;
	}
	error = FUNC17(dev, 0, "mmc", &sc->aw_clk_mmc);
	if (error != 0) {
		FUNC25(dev, "cannot get mmc clock\n");
		goto fail;
	}
	error = FUNC18(sc->aw_clk_mmc, CARD_ID_FREQUENCY,
	    CLK_SET_ROUND_DOWN);
	if (error != 0) {
		FUNC25(dev, "cannot init mmc clock\n");
		goto fail;
	}
	error = FUNC16(sc->aw_clk_mmc);
	if (error != 0) {
		FUNC25(dev, "cannot enable mmc clock\n");
		goto fail;
	}

	sc->aw_timeout = 10;
	ctx = FUNC23(dev);
	tree = FUNC2(FUNC24(dev));
	FUNC1(ctx, tree, OID_AUTO, "req_timeout", CTLFLAG_RW,
	    &sc->aw_timeout, 0, "Request timeout in seconds");

	/* Soft Reset controller. */
	if (FUNC3(sc) != 0) {
		FUNC25(dev, "cannot reset the controller\n");
		goto fail;
	}

	if (FUNC4(sc) != 0) {
		FUNC25(sc->aw_dev, "Couldn't setup DMA!\n");
		goto fail;
	}

	if (FUNC0(node, "bus-width", &bus_width, sizeof(uint32_t)) <= 0)
		bus_width = 4;

	if (FUNC36(dev, 0, "vmmc-supply",
	    &sc->aw_reg_vmmc) == 0) {
		if (bootverbose)
			FUNC25(dev, "vmmc-supply regulator found\n");
	}
	if (FUNC36(dev, 0, "vqmmc-supply",
	    &sc->aw_reg_vqmmc) == 0 && bootverbose) {
		if (bootverbose)
			FUNC25(dev, "vqmmc-supply regulator found\n");
	}

	sc->aw_host.f_min = 400000;

	if (FUNC0(node, "max-frequency", &max_freq,
	    sizeof(uint32_t)) <= 0)
		max_freq = 52000000;
	sc->aw_host.f_max = max_freq;

	sc->aw_host.host_ocr = MMC_OCR_320_330 | MMC_OCR_330_340;
	sc->aw_host.caps = MMC_CAP_HSPEED | MMC_CAP_UHS_SDR12 |
			   MMC_CAP_UHS_SDR25 | MMC_CAP_UHS_SDR50 |
			   MMC_CAP_UHS_DDR50 | MMC_CAP_MMC_DDR52;

	if (sc->aw_reg_vqmmc != NULL) {
		if (FUNC35(sc->aw_reg_vqmmc, 1800000) == 0)
			sc->aw_host.caps |= MMC_CAP_SIGNALING_180;
		if (FUNC35(sc->aw_reg_vqmmc, 3300000) == 0)
			sc->aw_host.caps |= MMC_CAP_SIGNALING_330;
	} else
		sc->aw_host.caps |= MMC_CAP_SIGNALING_330;

	if (bus_width >= 4)
		sc->aw_host.caps |= MMC_CAP_4_BIT_DATA;
	if (bus_width >= 8)
		sc->aw_host.caps |= MMC_CAP_8_BIT_DATA;

#ifdef MMCCAM
	child = NULL; /* Not used by MMCCAM, need to silence compiler warnings */
	sc->ccb = NULL;
	if ((sc->devq = cam_simq_alloc(1)) == NULL) {
		goto fail;
	}

	mtx_init(&sc->sim_mtx, "awmmcsim", NULL, MTX_DEF);
	sc->sim = cam_sim_alloc_dev(aw_mmc_cam_action, aw_mmc_cam_poll,
	    "aw_mmc_sim", sc, dev,
	    &sc->sim_mtx, 1, 1, sc->devq);

	if (sc->sim == NULL) {
		cam_simq_free(sc->devq);
		device_printf(dev, "cannot allocate CAM SIM\n");
		goto fail;
	}

	mtx_lock(&sc->sim_mtx);
	if (xpt_bus_register(sc->sim, sc->aw_dev, 0) != 0) {
		device_printf(dev, "cannot register SCSI pass-through bus\n");
		cam_sim_free(sc->sim, FALSE);
		cam_simq_free(sc->devq);
		mtx_unlock(&sc->sim_mtx);
		goto fail;
	}

	mtx_unlock(&sc->sim_mtx);
#else /* !MMCCAM */
	child = FUNC19(dev, "mmc", -1);
	if (child == NULL) {
		FUNC25(dev, "attaching MMC bus failed!\n");
		goto fail;
	}
	if (FUNC26(child) != 0) {
		FUNC25(dev, "attaching MMC child failed!\n");
		FUNC20(dev, child);
		goto fail;
	}
#endif /* MMCCAM */
	return (0);

fail:
	FUNC9(&sc->aw_timeoutc);
	FUNC29(&sc->aw_mtx);
	FUNC8(dev, sc->aw_res[AW_MMC_IRQRES], sc->aw_intrhand);
	FUNC6(dev, aw_mmc_res_spec, sc->aw_res);

#ifdef MMCCAM
	if (sc->sim != NULL) {
		mtx_lock(&sc->sim_mtx);
		xpt_bus_deregister(cam_sim_path(sc->sim));
		cam_sim_free(sc->sim, FALSE);
		mtx_unlock(&sc->sim_mtx);
	}

	if (sc->devq != NULL)
		cam_simq_free(sc->devq);
#endif
	return (ENXIO);
}