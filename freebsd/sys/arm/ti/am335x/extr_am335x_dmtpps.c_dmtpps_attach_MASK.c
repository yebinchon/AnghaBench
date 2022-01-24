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
struct make_dev_args {int mda_mode; struct dmtpps_softc* mda_si_drv1; int /*<<< orphan*/  mda_unit; int /*<<< orphan*/  mda_gid; int /*<<< orphan*/  mda_uid; int /*<<< orphan*/ * mda_cr; int /*<<< orphan*/ * mda_devsw; int /*<<< orphan*/  mda_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/ * driver_mtx; int /*<<< orphan*/  driver_abi; int /*<<< orphan*/  ppscap; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {unsigned int tc_counter_mask; int tc_frequency; int tc_quality; struct dmtpps_softc* tc_priv; int /*<<< orphan*/  tc_get_timecount; int /*<<< orphan*/  tc_name; } ;
struct dmtpps_softc {int tmr_num; int tclr; int /*<<< orphan*/  tmr_name; int /*<<< orphan*/  dev; int /*<<< orphan*/  pps_cdev; TYPE_2__ pps_state; int /*<<< orphan*/  pps_mtx; TYPE_1__ tc; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/  mem_rid; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  clk_ident_t ;

/* Variables and functions */
 int FUNC0 (struct dmtpps_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dmtpps_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DMT_TCLR ; 
 int DMT_TCLR_AUTOLOAD ; 
 int DMT_TCLR_GPO_CFG ; 
 int DMT_TCLR_START ; 
 int /*<<< orphan*/  DMT_TCRR ; 
 int /*<<< orphan*/  DMT_TIOCP_CFG ; 
 int DMT_TIOCP_RESET ; 
 int /*<<< orphan*/  DMT_TLDR ; 
 int /*<<< orphan*/  DMT_TSICR ; 
 int DMT_TSICR_RESET ; 
 int ENXIO ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  INVALID_CLK_IDENT ; 
 int /*<<< orphan*/  MAKEDEV_WAITOK ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  PPSFLAG_MTX_SPIN ; 
 int /*<<< orphan*/  PPS_ABI_VERSION ; 
 int /*<<< orphan*/  PPS_CAPTUREASSERT ; 
 int /*<<< orphan*/  PPS_CDEV_NAME ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYSCLK_CLK ; 
 int /*<<< orphan*/  SYS_CLK ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  UID_ROOT ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dmtpps_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  dmtpps_cdevsw ; 
 int /*<<< orphan*/  dmtpps_get_timecount ; 
 int /*<<< orphan*/  FUNC6 (struct make_dev_args*) ; 
 int FUNC7 (struct make_dev_args*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct dmtpps_softc *sc;
	struct make_dev_args mda;
	clk_ident_t timer_id;
	int err, sysclk_freq;

	sc = FUNC3(dev);
	sc->dev = dev;

	/* Get the base clock frequency. */
	err = FUNC15(SYS_CLK, &sysclk_freq);

	/* Enable clocks and power on the device. */
	if ((timer_id = FUNC12(dev)) == INVALID_CLK_IDENT)
		return (ENXIO);
	if ((err = FUNC16(timer_id, SYSCLK_CLK)) != 0)
		return (err);
	if ((err = FUNC14(timer_id)) != 0)
		return (err);

	/* Request the memory resources. */
	sc->mem_res = FUNC2(dev, SYS_RES_MEMORY,
	    &sc->mem_rid, RF_ACTIVE);
	if (sc->mem_res == NULL) {
		return (ENXIO);
	}

	/* Figure out which hardware timer this is and set the name string. */
	sc->tmr_num = FUNC13(dev, "timer");
	FUNC10(sc->tmr_name, sizeof(sc->tmr_name), "DMTimer%d", sc->tmr_num);

	/*
	 * Configure the timer pulse/capture pin to input/capture mode.  This is
	 * required in addition to configuring the pin as input with the pinmux
	 * controller (which was done via fdt data or tunable at probe time).
	 */
	sc->tclr = DMT_TCLR_GPO_CFG;
	FUNC1(sc, DMT_TCLR, sc->tclr);

	/* Set up timecounter hardware, start it. */
	FUNC1(sc, DMT_TSICR, DMT_TSICR_RESET);
	while (FUNC0(sc, DMT_TIOCP_CFG) & DMT_TIOCP_RESET)
		continue;

	sc->tclr |= DMT_TCLR_START | DMT_TCLR_AUTOLOAD;
	FUNC1(sc, DMT_TLDR, 0);
	FUNC1(sc, DMT_TCRR, 0);
	FUNC1(sc, DMT_TCLR, sc->tclr);

	/* Register the timecounter. */
	sc->tc.tc_name           = sc->tmr_name;
	sc->tc.tc_get_timecount  = dmtpps_get_timecount;
	sc->tc.tc_counter_mask   = ~0u;
	sc->tc.tc_frequency      = sysclk_freq;
	sc->tc.tc_quality        = 1000;
	sc->tc.tc_priv           = sc;

	FUNC11(&sc->tc);

	/*
	 * Indicate our PPS capabilities.  Have the kernel init its part of the
	 * pps_state struct and add its capabilities.
	 *
	 * While the hardware has a mode to capture each edge, it's not clear we
	 * can use it that way, because there's only a single interrupt/status
	 * bit to say something was captured, but not which edge it was.  For
	 * now, just say we can only capture assert events (the positive-going
	 * edge of the pulse).
	 */
	FUNC8(&sc->pps_mtx, "dmtpps", NULL, MTX_SPIN);
	sc->pps_state.flags = PPSFLAG_MTX_SPIN;
	sc->pps_state.ppscap = PPS_CAPTUREASSERT;
	sc->pps_state.driver_abi = PPS_ABI_VERSION;
	sc->pps_state.driver_mtx = &sc->pps_mtx;
	FUNC9(&sc->pps_state);

	/* Create the PPS cdev. */
	FUNC6(&mda);
	mda.mda_flags = MAKEDEV_WAITOK;
	mda.mda_devsw = &dmtpps_cdevsw;
	mda.mda_cr = NULL;
	mda.mda_uid = UID_ROOT;
	mda.mda_gid = GID_WHEEL;
	mda.mda_mode = 0600;
	mda.mda_unit = FUNC4(dev);
	mda.mda_si_drv1 = sc;
	if ((err = FUNC7(&mda, &sc->pps_cdev, PPS_CDEV_NAME)) != 0) {
		FUNC5(dev, "Failed to create cdev %s\n", PPS_CDEV_NAME);
		return (err);
	}

	if (bootverbose)
		FUNC5(sc->dev, "Using %s for PPS device /dev/%s\n",
		    sc->tmr_name, PPS_CDEV_NAME);

	return (0);
}