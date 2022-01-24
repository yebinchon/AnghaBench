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
struct arm_tmr_softc {int /*<<< orphan*/  irqrid; int /*<<< orphan*/  memrid; int /*<<< orphan*/  dev; scalar_t__ clkfreq; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  scalar_t__ pcell_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  clock ;
struct TYPE_2__ {int ocd_data; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int TMR_GBL ; 
 int TMR_PRV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct arm_tmr_softc*) ; 
 int /*<<< orphan*/  arm_tmr_delay ; 
 scalar_t__ arm_tmr_freq ; 
 scalar_t__ arm_tmr_freq_varies ; 
 int FUNC2 (struct arm_tmr_softc*) ; 
 int FUNC3 (struct arm_tmr_softc*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  compat_data ; 
 struct arm_tmr_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct arm_tmr_softc *sc;
	phandle_t node;
	pcell_t clock;
	int et_err, tc_err, tmrtype;

	sc = FUNC4(dev);
	sc->dev = dev;

	if (arm_tmr_freq_varies) {
		sc->clkfreq = arm_tmr_freq;
	} else {
		if (arm_tmr_freq != 0) {
			sc->clkfreq = arm_tmr_freq;
		} else {
			/* Get the base clock frequency */
			node = FUNC6(dev);
			if ((FUNC0(node, "clock-frequency", &clock,
			    sizeof(clock))) <= 0) {
				FUNC5(dev, "missing clock-frequency "
				    "attribute in FDT\n");
				return (ENXIO);
			}
			sc->clkfreq = clock;
		}
	}

	tmrtype = FUNC7(dev, compat_data)->ocd_data;
	tc_err = ENXIO;
	et_err = ENXIO;

	/*
	 * If we're handling the global timer and it is fixed-frequency, set it
	 * up to use as a timecounter.  If it's variable frequency it won't work
	 * as a timecounter.  We also can't use it for DELAY(), so hopefully the
	 * platform provides its own implementation. If it doesn't, ours will
	 * get used, but since the frequency isn't set, it will only use the
	 * bogus loop counter.
	 */
	if (tmrtype & TMR_GBL) {
		if (!arm_tmr_freq_varies)
			tc_err = FUNC3(sc);
		else if (bootverbose)
			FUNC5(sc->dev,
			    "not using variable-frequency device as timecounter\n");
		sc->memrid++;
		sc->irqrid++;
	}

	/* If we are handling the private timer, set it up as an eventtimer. */
	if (tmrtype & TMR_PRV) {
		et_err = FUNC2(sc);
	}

	/*
	 * If we didn't successfully set up a timecounter or eventtimer then we
	 * didn't actually attach at all, return error.
	 */
	if (tc_err != 0 && et_err != 0) {
		return (ENXIO);
	}

#ifdef PLATFORM
	/*
	 * We can register as the DELAY() implementation only if we successfully
	 * set up the global timer.
	 */
	if (tc_err == 0)
		arm_set_delay(arm_tmr_delay, sc);
#endif

	return (0);
}