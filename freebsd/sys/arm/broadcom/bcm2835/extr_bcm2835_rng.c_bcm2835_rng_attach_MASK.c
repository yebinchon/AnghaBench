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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sbuf {int dummy; } ;
struct bcm2835_rng_softc {int /*<<< orphan*/  sc_rngto; int /*<<< orphan*/  sc_stall_count; int /*<<< orphan*/  sc_underrun; int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/  sc_rbg2x; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CALLOUT_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int CTLTYPE_STRING ; 
 int ENXIO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  RNG_STALL_COUNT_DEFAULT ; 
 int SBUF_AUTOEXTEND ; 
 int SBUF_INCLUDENUL ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct bcm2835_rng_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bcm2835_rng_softc*,struct sbuf*) ; 
 int /*<<< orphan*/  bcm2835_rng_harvest ; 
 int /*<<< orphan*/  FUNC7 (struct bcm2835_rng_softc*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bcm2835_rng_softc*) ; 
 struct bcm2835_rng_softc* FUNC11 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC12 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC15 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC16 (struct sbuf*) ; 
 int FUNC17 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC18 (struct sbuf*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sbuf*) ; 
 int /*<<< orphan*/  sysctl_bcm2835_rng_2xspeed ; 
 int /*<<< orphan*/  sysctl_bcm2835_rng_dump ; 

__attribute__((used)) static int
FUNC20(device_t dev)
{
	struct bcm2835_rng_softc *sc;
	struct sysctl_ctx_list *sysctl_ctx;
	struct sysctl_oid *sysctl_tree;
	int error, rid;

	error = 0;
	sc = FUNC11(dev);
	sc->sc_dev = dev;
	sc->sc_stall_count = RNG_STALL_COUNT_DEFAULT;

	/* Initialize callout */
	FUNC9(&sc->sc_rngto, CALLOUT_MPSAFE);

	FUNC4("bcmrng.2xspeed", &sc->sc_rbg2x);
	FUNC4("bcmrng.stall_count", &sc->sc_stall_count);

	/* Allocate memory resources */
	rid = 0;
	sc->sc_mem_res = FUNC8(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->sc_mem_res == NULL) {
		FUNC5(dev);
		return (ENXIO);
	}

	/* Start the RNG */
	FUNC7(sc);

	/* Dump the registers if booting verbose */
	if (bootverbose) {
		struct sbuf sb;

		(void) FUNC18(&sb, NULL, 256,
		    SBUF_AUTOEXTEND | SBUF_INCLUDENUL);
		FUNC6(sc, &sb);
		FUNC19(&sb);
		error = FUNC17(&sb);
		if (error == 0)
			FUNC14(dev, "%s", FUNC15(&sb));
		FUNC16(&sb);
	}

	sysctl_ctx = FUNC12(dev);
	sysctl_tree = FUNC13(dev);
	FUNC1(sysctl_ctx, FUNC3(sysctl_tree), OID_AUTO,
	    "underrun", CTLFLAG_RD, &sc->sc_underrun,
	    "Number of FIFO underruns");
	FUNC2(sysctl_ctx, FUNC3(sysctl_tree), OID_AUTO,
	    "2xspeed", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
	    sysctl_bcm2835_rng_2xspeed, "I", "Enable RBG 2X SPEED");
	FUNC0(sysctl_ctx, FUNC3(sysctl_tree), OID_AUTO,
	    "stall_count", CTLFLAG_RW, &sc->sc_stall_count,
	    RNG_STALL_COUNT_DEFAULT, "Number of underruns to assume RNG stall");
#ifdef BCM2835_RNG_DEBUG_REGISTERS
	SYSCTL_ADD_PROC(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
	    "dumpregs", CTLTYPE_STRING | CTLFLAG_RD, sc, 0,
	    sysctl_bcm2835_rng_dump, "S", "Dump RNG registers");
#endif

	/* 
	 * Schedule the initial harvesting one second from now, which should give the
	 * hardware RNG plenty of time to generate the first random bytes.
	 */
	FUNC10(&sc->sc_rngto, hz, bcm2835_rng_harvest, sc);

	return (0);
}