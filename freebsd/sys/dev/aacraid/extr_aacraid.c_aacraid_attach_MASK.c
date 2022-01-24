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
typedef  int /*<<< orphan*/  u_int32_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct aac_softc {int flags; int /*<<< orphan*/  timeout_id; int /*<<< orphan*/  aac_io_lock; int /*<<< orphan*/  aac_daemontime; int /*<<< orphan*/  aac_state; int /*<<< orphan*/  aac_dev; int /*<<< orphan*/  aac_sim_tqh; int /*<<< orphan*/ * eh; int /*<<< orphan*/  aifthread; TYPE_1__* aac_dev_t; int /*<<< orphan*/  aac_ev_cmfree; int /*<<< orphan*/  aac_container_tqh; int /*<<< orphan*/  msi_tupelo; int /*<<< orphan*/  msi_enabled; int /*<<< orphan*/  hint_flags; } ;
struct aac_mntinforesp {int MntRespCount; } ;
struct aac_fib {int dummy; } ;
struct TYPE_2__ {struct aac_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AAC_ENABLE_INTERRUPT ; 
 int AAC_FLAGS_ENABLE_CAM ; 
 int AAC_FLAGS_SYNC_MODE ; 
 int AAC_MAX_CONTAINERS ; 
 int /*<<< orphan*/  AAC_STATE_SUSPEND ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC3 (struct aac_softc*,struct aac_mntinforesp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct aac_softc*,struct aac_fib**) ; 
 int FUNC6 (struct aac_softc*) ; 
 scalar_t__ aac_command_thread ; 
 int /*<<< orphan*/  FUNC7 (struct aac_softc*) ; 
 int /*<<< orphan*/  aac_daemon ; 
 int /*<<< orphan*/  FUNC8 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct aac_softc*) ; 
 scalar_t__ FUNC11 (struct aac_softc*,struct aac_fib*,int,struct aac_mntinforesp*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct aac_softc*) ; 
 scalar_t__ FUNC16 (void (*) (void*),struct aac_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct aac_softc*) ; 
 int FUNC18 (struct aac_softc*) ; 
 int /*<<< orphan*/  aacraid_cdevsw ; 
 int /*<<< orphan*/  aacraid_shutdown ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC25 (struct aac_softc*,char*,char*) ; 
 int hz ; 
 TYPE_1__* FUNC26 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 
 int /*<<< orphan*/  shutdown_final ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct timeval*) ; 

int
FUNC33(struct aac_softc *sc)
{
	int error, unit;
	struct aac_fib *fib;
	struct aac_mntinforesp mir;
	int count = 0, i = 0;
	u_int32_t uid;

	FUNC25(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
	sc->hint_flags = FUNC22(sc->aac_dev);
	/*
	 * Initialize per-controller queues.
	 */
	FUNC14(sc);
	FUNC15(sc);
	FUNC13(sc);

	/* mark controller as suspended until we get ourselves organised */
	sc->aac_state |= AAC_STATE_SUSPEND;

	/*
	 * Check that the firmware on the card is supported.
	 */
	sc->msi_enabled = sc->msi_tupelo = FALSE;
	if ((error = FUNC6(sc)) != 0)
		return(error);

	/*
	 * Initialize locks
	 */
	FUNC27(&sc->aac_io_lock, "AACRAID I/O lock", NULL, MTX_DEF);
	FUNC2(&sc->aac_container_tqh);
	FUNC2(&sc->aac_ev_cmfree);

#if __FreeBSD_version >= 800000
	/* Initialize the clock daemon callout. */
	callout_init_mtx(&sc->aac_daemontime, &sc->aac_io_lock, 0);
#endif
	/*
	 * Initialize the adapter.
	 */
	if ((error = FUNC4(sc)) != 0)
		return(error);
	FUNC8(sc);
	if (!(sc->flags & AAC_FLAGS_SYNC_MODE)) {
		if ((error = FUNC12(sc)) != 0)
			return(error);
	}

	/*
	 * Allocate and connect our interrupt.
	 */
	if ((error = FUNC18(sc)) != 0)
		return(error);

	/*
	 * Print a little information about the controller.
	 */
	FUNC9(sc);

	/*
	 * Make the control device.
	 */
	unit = FUNC23(sc->aac_dev);
	sc->aac_dev_t = FUNC26(&aacraid_cdevsw, unit, UID_ROOT, GID_OPERATOR,
				 0640, "aacraid%d", unit);
	sc->aac_dev_t->si_drv1 = sc;

	/* Create the AIF thread */
	if (FUNC16((void(*)(void *))aac_command_thread, sc,
		   &sc->aifthread, 0, 0, "aacraid%daif", unit))
		FUNC30("Could not create AIF thread");

	/* Register the shutdown method to only be called post-dump */
	if ((sc->eh = FUNC1(shutdown_final, aacraid_shutdown,
	    sc->aac_dev, SHUTDOWN_PRI_DEFAULT)) == NULL)
		FUNC24(sc->aac_dev,
			      "shutdown event registration failed\n");

	/* Find containers */
	FUNC28(&sc->aac_io_lock);
	FUNC5(sc, &fib);
	/* loop over possible containers */
	do {
		if ((FUNC11(sc, fib, i, &mir, &uid)) != 0)
			continue;
		if (i == 0) 
			count = mir.MntRespCount;
		FUNC3(sc, &mir, 0, uid);
		i++;
	} while ((i < count) && (i < AAC_MAX_CONTAINERS));
	FUNC17(sc);
	FUNC29(&sc->aac_io_lock);

	/* Register with CAM for the containers */
	FUNC2(&sc->aac_sim_tqh);
	FUNC7(sc);
	/* Register with CAM for the non-DASD devices */
	if ((sc->flags & AAC_FLAGS_ENABLE_CAM) != 0) 
		FUNC10(sc);

	/* poke the bus to actually attach the child devices */
	FUNC19(sc->aac_dev);

	/* mark the controller up */
	sc->aac_state &= ~AAC_STATE_SUSPEND;

	/* enable interrupts now */
	FUNC0(sc, AAC_ENABLE_INTERRUPT);

#if __FreeBSD_version >= 800000
	mtx_lock(&sc->aac_io_lock);
	callout_reset(&sc->aac_daemontime, 60 * hz, aac_daemon, sc);
	mtx_unlock(&sc->aac_io_lock);
#else
	{
		struct timeval tv;
		tv.tv_sec = 60;
		tv.tv_usec = 0;
		sc->timeout_id = FUNC31(aac_daemon, (void *)sc, FUNC32(&tv));
	}
#endif

	return(0);
}