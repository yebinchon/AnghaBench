#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint64_t ;
struct mv_wdt_softc {int /*<<< orphan*/  wdt_mtx; TYPE_1__* wdt_config; } ;
struct TYPE_6__ {TYPE_2__* wdt_config; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* wdt_enable ) () ;int /*<<< orphan*/  wdt_timer; int /*<<< orphan*/  (* wdt_disable ) () ;} ;
struct TYPE_4__ {unsigned int wdt_clock_src; } ;

/* Variables and functions */
 unsigned int MAX_WATCHDOG_TICKS ; 
 unsigned int WD_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_3__* wdt_softc ; 

__attribute__((used)) static void
FUNC6(void *arg, unsigned int cmd, int *error)
{
	struct mv_wdt_softc *sc;
	uint64_t ns;
	uint64_t ticks;

	sc = arg;
	FUNC0(&sc->wdt_mtx);
	if (cmd == 0) {
		if (wdt_softc->wdt_config->wdt_disable != NULL)
			wdt_softc->wdt_config->wdt_disable();
	} else {
		/*
		 * Watchdog timeout is in nanosecs, calculation according to
		 * watchdog(9)
		 */
		ns = (uint64_t)1 << (cmd & WD_INTERVAL);
		ticks = (uint64_t)(ns * sc->wdt_config->wdt_clock_src) / 1000000000;
		if (ticks > MAX_WATCHDOG_TICKS) {
			if (wdt_softc->wdt_config->wdt_disable != NULL)
				wdt_softc->wdt_config->wdt_disable();
		}
		else {
			FUNC2(wdt_softc->wdt_config->wdt_timer, ticks);
			if (wdt_softc->wdt_config->wdt_enable != NULL)
				wdt_softc->wdt_config->wdt_enable();
			*error = 0;
		}
	}
	FUNC1(&sc->wdt_mtx);
}