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
struct TYPE_3__ {char* et_name; int et_flags; int et_quality; int et_max_period; struct arm_tmr_softc* et_priv; int /*<<< orphan*/  et_stop; int /*<<< orphan*/  et_start; int /*<<< orphan*/  et_min_period; int /*<<< orphan*/  et_frequency; } ;
struct arm_tmr_softc {int memrid; int irqrid; TYPE_1__ et; int /*<<< orphan*/  clkfreq; int /*<<< orphan*/  dev; int /*<<< orphan*/ * prv_irq; int /*<<< orphan*/ * prv_mem; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int ET_FLAGS_ONESHOT ; 
 int ET_FLAGS_PERCPU ; 
 int ET_FLAGS_PERIODIC ; 
 int /*<<< orphan*/  INTR_TYPE_CLK ; 
 int /*<<< orphan*/  PRV_TIMER_CTRL ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int SBT_1S ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 TYPE_1__* arm_tmr_et ; 
 int /*<<< orphan*/  arm_tmr_intr ; 
 int /*<<< orphan*/  arm_tmr_start ; 
 int /*<<< orphan*/  arm_tmr_stop ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct arm_tmr_softc*,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct arm_tmr_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct arm_tmr_softc *sc)
{
	void *ihl;
	int irid, mrid;

	if (arm_tmr_et != NULL)
		return (EBUSY);

	mrid = sc->memrid;
	sc->prv_mem = FUNC0(sc->dev, SYS_RES_MEMORY, &mrid,
	    RF_ACTIVE);
	if (sc->prv_mem == NULL) {
		FUNC3(sc->dev, "could not allocate prv mem resources\n");
		return (ENXIO);
	}
	FUNC6(sc, PRV_TIMER_CTRL, 0x00000000);

	irid = sc->irqrid;
	sc->prv_irq = FUNC0(sc->dev, SYS_RES_IRQ, &irid, RF_ACTIVE);
	if (sc->prv_irq == NULL) {
		FUNC1(sc->dev, SYS_RES_MEMORY, mrid, sc->prv_mem);
		FUNC3(sc->dev, "could not allocate prv irq resources\n");
		return (ENXIO);
	}

	if (FUNC2(sc->dev, sc->prv_irq, INTR_TYPE_CLK, arm_tmr_intr,
			NULL, sc, &ihl) != 0) {
		FUNC1(sc->dev, SYS_RES_MEMORY, mrid, sc->prv_mem);
		FUNC1(sc->dev, SYS_RES_IRQ, irid, sc->prv_irq);
		FUNC3(sc->dev, "unable to setup the et irq handler.\n");
		return (ENXIO);
	}

	/*
	 * Setup and register the eventtimer.  Most event timers set their min
	 * and max period values to some value calculated from the clock
	 * frequency.  We might not know yet what our runtime clock frequency
	 * will be, so we just use some safe values.  A max of 2 seconds ensures
	 * that even if our base clock frequency is 2GHz (meaning a 4GHz CPU),
	 * we won't overflow our 32-bit timer count register.  A min of 20
	 * nanoseconds is pretty much completely arbitrary.
	 */
	sc->et.et_name = "MPCore";
	sc->et.et_flags = ET_FLAGS_PERIODIC | ET_FLAGS_ONESHOT | ET_FLAGS_PERCPU;
	sc->et.et_quality = 1000;
	sc->et.et_frequency = sc->clkfreq;
	sc->et.et_min_period = FUNC5(20);
	sc->et.et_max_period =  2 * SBT_1S;
	sc->et.et_start = arm_tmr_start;
	sc->et.et_stop = arm_tmr_stop;
	sc->et.et_priv = sc;
	FUNC4(&sc->et);
	arm_tmr_et = &sc->et;

	return (0);
}