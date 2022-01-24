#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct aac_softc {int aifflags; int /*<<< orphan*/  aac_io_lock; int /*<<< orphan*/  eh; int /*<<< orphan*/  aac_dev; int /*<<< orphan*/  aifthread; int /*<<< orphan*/  aac_sim_tqh; int /*<<< orphan*/  aac_container_tqh; int /*<<< orphan*/  timeout_id; int /*<<< orphan*/  aac_daemontime; } ;
struct aac_sim {int /*<<< orphan*/  sim_dev; } ;
struct aac_container {int /*<<< orphan*/  sim_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AAC_AIFFLAGS_EXIT ; 
 int AAC_AIFFLAGS_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  M_AACRAIDBUF ; 
 int PCATCH ; 
 int PUSER ; 
 struct aac_sim* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct aac_sim*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aac_daemon ; 
 int /*<<< orphan*/  FUNC3 (struct aac_softc*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  co_link ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aac_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct aac_sim*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct aac_softc*,char*,char*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  shutdown_final ; 
 int /*<<< orphan*/  sim_link ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

int
FUNC15(device_t dev)
{
	struct aac_softc *sc;
	struct aac_container *co;
	struct aac_sim	*sim;
	int error;

	sc = FUNC7(dev);
	FUNC9(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

#if __FreeBSD_version >= 800000
	callout_drain(&sc->aac_daemontime);
#else
	FUNC13(aac_daemon, (void *)sc, sc->timeout_id);
#endif
	/* Remove the child containers */
	while ((co = FUNC1(&sc->aac_container_tqh)) != NULL) {
		FUNC2(&sc->aac_container_tqh, co, co_link);
		FUNC8(co, M_AACRAIDBUF);
	}

	/* Remove the CAM SIMs */
	while ((sim = FUNC1(&sc->aac_sim_tqh)) != NULL) {
		FUNC2(&sc->aac_sim_tqh, sim, sim_link);
		error = FUNC6(dev, sim->sim_dev);
		if (error)
			return (error);
		FUNC8(sim, M_AACRAIDBUF);
	}

	if (sc->aifflags & AAC_AIFFLAGS_RUNNING) {
		sc->aifflags |= AAC_AIFFLAGS_EXIT;
		FUNC14(sc->aifthread);
		FUNC12(sc->aac_dev, PUSER | PCATCH, "aac_dch", 30 * hz);
	}

	if (sc->aifflags & AAC_AIFFLAGS_RUNNING)
		FUNC11("Cannot shutdown AIF thread");

	if ((error = FUNC4(dev)))
		return(error);

	FUNC0(shutdown_final, sc->eh);

	FUNC3(sc);

	FUNC10(&sc->aac_io_lock);

	return(0);
}