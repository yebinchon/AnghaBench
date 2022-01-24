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
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  et_arg; int /*<<< orphan*/  (* et_event_cb ) (TYPE_1__*,int /*<<< orphan*/ ) ;scalar_t__ et_active; } ;
struct a10_timer_softc {scalar_t__ sc_period; TYPE_1__ et; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int TIMER_CTRL_AUTORELOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TIMER_CTRL_START ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIMER_IRQ_STA_REG ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct a10_timer_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct a10_timer_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(void *arg)
{
	struct a10_timer_softc *sc;
	uint32_t val;

	sc = (struct a10_timer_softc *)arg;

	/* Clear interrupt pending bit. */
	FUNC5(sc, TIMER_IRQ_STA_REG, FUNC2(0));

	val = FUNC4(sc, FUNC0(0));

	/*
	 * Disabled autoreload and sc_period > 0 means 
	 * timer_start was called with non NULL first value.
	 * Now we will set periodic timer with the given period 
	 * value.
	 */
	if ((val & (1<<1)) == 0 && sc->sc_period > 0) {
		/* Update timer */
		FUNC5(sc, FUNC1(0), sc->sc_period);

		/* Make periodic and enable */
		val |= TIMER_CTRL_AUTORELOAD | TIMER_CTRL_START;
		FUNC5(sc, FUNC0(0), val);
	}

	if (sc->et.et_active)
		sc->et.et_event_cb(&sc->et, sc->et.et_arg);

	return (FILTER_HANDLED);
}