#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct a10_timer_softc {int timer0_freq; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/ * res; int /*<<< orphan*/  sc_ih; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  clk_t ;
struct TYPE_5__ {int /*<<< orphan*/  ocd_data; } ;
struct TYPE_4__ {int tc_frequency; struct a10_timer_softc* tc_priv; } ;

/* Variables and functions */
 size_t A10_TIMER_IRQRES ; 
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_CLK ; 
 int SYS_TIMER_CLKSRC ; 
 int /*<<< orphan*/  a10_timer_delay ; 
 int /*<<< orphan*/  FUNC0 (struct a10_timer_softc*) ; 
 int /*<<< orphan*/  a10_timer_irq ; 
 int /*<<< orphan*/  a10_timer_spec ; 
 TYPE_1__ a10_timer_timecounter ; 
 int /*<<< orphan*/  FUNC1 (struct a10_timer_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct a10_timer_softc*) ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct a10_timer_softc*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  compat_data ; 
 struct a10_timer_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  hz ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stathz ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct a10_timer_softc *sc;
	clk_t clk;
	int err;

	sc = FUNC8(dev);
	sc->type = FUNC10(dev, compat_data)->ocd_data;

	if (FUNC3(dev, a10_timer_spec, sc->res)) {
		FUNC9(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	sc->sc_dev = dev;

	/* Setup and enable the timer interrupt */
	err = FUNC5(dev, sc->res[A10_TIMER_IRQRES], INTR_TYPE_CLK,
	    a10_timer_irq, NULL, sc, &sc->sc_ih);
	if (err != 0) {
		FUNC4(dev, a10_timer_spec, sc->res);
		FUNC9(dev, "Unable to setup the clock irq handler, "
		    "err = %d\n", err);
		return (ENXIO);
	}

	if (FUNC6(dev, 0, 0, &clk) != 0)
		sc->timer0_freq = SYS_TIMER_CLKSRC;
	else {
		if (FUNC7(clk, &sc->timer0_freq) != 0) {
			FUNC9(dev, "Cannot get clock source frequency\n");
			return (ENXIO);
		}
	}

#if defined(__arm__)
	a10_timer_eventtimer_setup(sc);
	arm_set_delay(a10_timer_delay, sc);
	a10_timer_timecounter.tc_priv = sc;
	a10_timer_timecounter.tc_frequency = sc->timer0_freq;
	tc_init(&a10_timer_timecounter);
#elif defined(__aarch64__)
	a23_timer_timecounter_setup(sc);
#endif

	if (bootverbose) {
		FUNC9(sc->sc_dev, "clock: hz=%d stathz = %d\n", hz, stathz);

		FUNC9(sc->sc_dev, "event timer clock frequency %ju\n", 
		    sc->timer0_freq);
		FUNC9(sc->sc_dev, "timecounter clock frequency %jd\n", 
		    a10_timer_timecounter.tc_frequency);
	}

	return (0);
}