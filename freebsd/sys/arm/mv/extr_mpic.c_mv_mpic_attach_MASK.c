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
typedef  int /*<<< orphan*/  uint32_t ;
struct mv_mpic_softc {int /*<<< orphan*/ ** mpic_res; int /*<<< orphan*/  nirqs; void* drbl_bsh; void* drbl_bst; void* cpu_bsh; void* cpu_bst; void* mpic_bsh; void* mpic_bst; int /*<<< orphan*/  intr_hand; int /*<<< orphan*/  mtx; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_CLK ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct mv_mpic_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mv_mpic_softc*,scalar_t__,int) ; 
 scalar_t__ MPIC_CTP ; 
 int /*<<< orphan*/  MPIC_CTRL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ MPIC_LOCAL_MASK ; 
 int /*<<< orphan*/  FUNC4 (struct mv_mpic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mv_mpic_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mv_mpic_softc*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  mpic_intr ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct mv_mpic_softc*) ; 
 struct mv_mpic_softc* mv_mpic_sc ; 
 int /*<<< orphan*/  mv_mpic_spec ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 void* FUNC19 (int /*<<< orphan*/ *) ; 
 void* FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC21(device_t dev)
{
	struct mv_mpic_softc *sc;
	int error;
	uint32_t val;
	int cpu;

	sc = (struct mv_mpic_softc *)FUNC12(dev);

	if (mv_mpic_sc != NULL)
		return (ENXIO);
	mv_mpic_sc = sc;

	sc->sc_dev = dev;

	FUNC16(&sc->mtx, "MPIC lock", NULL, MTX_SPIN);

	error = FUNC9(dev, mv_mpic_spec, sc->mpic_res);
	if (error) {
		FUNC13(dev, "could not allocate resources\n");
		return (ENXIO);
	}
	if (sc->mpic_res[3] == NULL)
		FUNC13(dev, "No interrupt to use.\n");
	else
		FUNC11(dev, sc->mpic_res[3], INTR_TYPE_CLK,
		    mpic_intr, NULL, sc, &sc->intr_hand);

	sc->mpic_bst = FUNC20(sc->mpic_res[0]);
	sc->mpic_bsh = FUNC19(sc->mpic_res[0]);

	sc->cpu_bst = FUNC20(sc->mpic_res[1]);
	sc->cpu_bsh = FUNC19(sc->mpic_res[1]);

	if (sc->mpic_res[2] != NULL) {
		/* This is required only if MSIs are used. */
		sc->drbl_bst = FUNC20(sc->mpic_res[2]);
		sc->drbl_bsh = FUNC19(sc->mpic_res[2]);
	}

	FUNC5(mv_mpic_sc, MPIC_CTRL, 1);
	FUNC2(mv_mpic_sc, MPIC_CTP, 0);

	val = FUNC4(mv_mpic_sc, MPIC_CTRL);
	sc->nirqs = FUNC3(val);

	if (FUNC17(sc) != 0) {
		FUNC13(dev, "could not register PIC ISRCs\n");
		FUNC10(dev, mv_mpic_spec, sc->mpic_res);
		return (ENXIO);
	}

	FUNC6(FUNC8(FUNC18(dev)), dev);

	if (FUNC14(dev, FUNC7(dev)) == NULL) {
		FUNC13(dev, "could not register PIC\n");
		FUNC10(dev, mv_mpic_spec, sc->mpic_res);
		return (ENXIO);
	}

	FUNC15();

	/* Unmask CPU performance counters overflow irq */
	for (cpu = 0; cpu < mp_ncpus; cpu++)
		FUNC2(mv_mpic_sc, FUNC0(cpu) + MPIC_LOCAL_MASK,
		    (1 << cpu) | FUNC1(mv_mpic_sc,
		    FUNC0(cpu) + MPIC_LOCAL_MASK));

	return (0);
}