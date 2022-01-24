#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct aac_softc* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct TYPE_5__ {int /*<<< orphan*/  buildNumber; } ;
struct aac_softc {int flags; int /*<<< orphan*/  aac_io_lock; int /*<<< orphan*/  aac_daemontime; int /*<<< orphan*/  aac_sim_tqh; int /*<<< orphan*/  aac_dev; int /*<<< orphan*/ * eh; int /*<<< orphan*/  aifthread; TYPE_2__* aac_dev_t; TYPE_4__ aac_ich; TYPE_1__ aac_revision; int /*<<< orphan*/  aac_ev_cmfree; int /*<<< orphan*/  aac_container_tqh; int /*<<< orphan*/  aac_container_lock; int /*<<< orphan*/  aac_aifq_lock; int /*<<< orphan*/  aac_state; int /*<<< orphan*/  aac_task_complete; } ;
struct TYPE_6__ {struct aac_softc* si_drv1; } ;

/* Variables and functions */
 int AAC_FLAGS_ENABLE_CAM ; 
 int /*<<< orphan*/  AAC_STATE_SUSPEND ; 
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int ENXIO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aac_softc*) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int FUNC5 (struct aac_softc*) ; 
 int /*<<< orphan*/  aac_cdevsw ; 
 int FUNC6 (struct aac_softc*) ; 
 scalar_t__ aac_command_thread ; 
 int /*<<< orphan*/  aac_complete ; 
 int /*<<< orphan*/  aac_daemon ; 
 int /*<<< orphan*/  FUNC7 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct aac_softc*) ; 
 int FUNC9 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct aac_softc*) ; 
 int FUNC14 (struct aac_softc*) ; 
 int /*<<< orphan*/  aac_shutdown ; 
 int /*<<< orphan*/  aac_startup ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct aac_softc*) ; 
 scalar_t__ FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (struct aac_softc*,char*,char*) ; 
 int hz ; 
 scalar_t__ FUNC23 (void (*) (void*),struct aac_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__* FUNC24 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 int /*<<< orphan*/  shutdown_final ; 

int
FUNC30(struct aac_softc *sc)
{
	int error, unit;

	FUNC22(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	/*
	 * Initialize per-controller queues.
	 */
	FUNC12(sc);
	FUNC13(sc);
	FUNC11(sc);
	FUNC10(sc);

	/*
	 * Initialize command-completion task.
	 */
	FUNC4(&sc->aac_task_complete, 0, aac_complete, sc);

	/* mark controller as suspended until we get ourselves organised */
	sc->aac_state |= AAC_STATE_SUSPEND;

	/*
	 * Check that the firmware on the card is supported.
	 */
	if ((error = FUNC6(sc)) != 0)
		return(error);

	/*
	 * Initialize locks
	 */
	FUNC26(&sc->aac_aifq_lock, "AAC AIF lock", NULL, MTX_DEF);
	FUNC26(&sc->aac_io_lock, "AAC I/O lock", NULL, MTX_DEF);
	FUNC26(&sc->aac_container_lock, "AAC container lock", NULL, MTX_DEF);
	FUNC3(&sc->aac_container_tqh);
	FUNC3(&sc->aac_ev_cmfree);

	/* Initialize the clock daemon callout. */
	FUNC15(&sc->aac_daemontime, &sc->aac_io_lock, 0);

	/*
	 * Initialize the adapter.
	 */
	if ((error = FUNC5(sc)) != 0)
		return(error);
	if ((error = FUNC9(sc)) != 0)
		return(error);

	/*
	 * Allocate and connect our interrupt.
	 */
	if ((error = FUNC14(sc)) != 0)
		return(error);

	/*
	 * Print a little information about the controller.
	 */
	FUNC7(sc);

	/*
	 * Add sysctls.
	 */
	FUNC1(FUNC18(sc->aac_dev),
	    FUNC2(FUNC19(sc->aac_dev)),
	    OID_AUTO, "firmware_build", CTLFLAG_RD,
	    &sc->aac_revision.buildNumber, 0,
	    "firmware build number");

	/*
	 * Register to probe our containers later.
	 */
	sc->aac_ich.ich_func = aac_startup;
	sc->aac_ich.ich_arg = sc;
	if (FUNC17(&sc->aac_ich) != 0) {
		FUNC21(sc->aac_dev,
			      "can't establish configuration hook\n");
		return(ENXIO);
	}

	/*
	 * Make the control device.
	 */
	unit = FUNC20(sc->aac_dev);
	sc->aac_dev_t = FUNC24(&aac_cdevsw, unit, UID_ROOT, GID_OPERATOR,
				 0640, "aac%d", unit);
	(void)FUNC25(sc->aac_dev_t, "afa%d", unit);
	(void)FUNC25(sc->aac_dev_t, "hpn%d", unit);
	sc->aac_dev_t->si_drv1 = sc;

	/* Create the AIF thread */
	if (FUNC23((void(*)(void *))aac_command_thread, sc,
		   &sc->aifthread, 0, 0, "aac%daif", unit))
		FUNC29("Could not create AIF thread");

	/* Register the shutdown method to only be called post-dump */
	if ((sc->eh = FUNC0(shutdown_final, aac_shutdown,
	    sc->aac_dev, SHUTDOWN_PRI_DEFAULT)) == NULL)
		FUNC21(sc->aac_dev,
			      "shutdown event registration failed\n");

	/* Register with CAM for the non-DASD devices */
	if ((sc->flags & AAC_FLAGS_ENABLE_CAM) != 0) {
		FUNC3(&sc->aac_sim_tqh);
		FUNC8(sc);
	}

	FUNC27(&sc->aac_io_lock);
	FUNC16(&sc->aac_daemontime, 60 * hz, aac_daemon, sc);
	FUNC28(&sc->aac_io_lock);

	return(0);
}