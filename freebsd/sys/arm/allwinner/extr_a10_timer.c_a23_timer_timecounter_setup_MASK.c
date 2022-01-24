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
typedef  int uint32_t ;
struct a10_timer_softc {int /*<<< orphan*/  timer0_freq; } ;
struct TYPE_3__ {int /*<<< orphan*/  tc_frequency; struct a10_timer_softc* tc_priv; } ;

/* Variables and functions */
 int TIMER_CTRL_AUTORELOAD ; 
 int TIMER_CTRL_CLKSRC_MASK ; 
 int TIMER_CTRL_MODE_MASK ; 
 int TIMER_CTRL_OSC24M ; 
 int FUNC0 (int) ; 
 int TIMER_CTRL_PRESCALAR_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int TIMER_CTRL_START ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ a23_timer_timecounter ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (struct a10_timer_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct a10_timer_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct a10_timer_softc *sc)
{
	uint32_t val;

	/* Set clock source to OSC24M, 1 pre-division, continuous mode */
	val = FUNC5(sc, FUNC1(0));
	val &= ~TIMER_CTRL_PRESCALAR_MASK | ~TIMER_CTRL_MODE_MASK | ~TIMER_CTRL_CLKSRC_MASK;
	val |= FUNC0(1) | TIMER_CTRL_OSC24M;
	FUNC6(sc, FUNC1(0), val);

	/* Set reload value */
	FUNC6(sc, FUNC3(0), ~0);
	val = FUNC5(sc, FUNC3(0));

	/* Enable timer0 */
	val = FUNC5(sc, FUNC1(0));
	val |= TIMER_CTRL_AUTORELOAD | TIMER_CTRL_START;
	FUNC6(sc, FUNC1(0), val);

	val = FUNC5(sc, FUNC2(0));

	a23_timer_timecounter.tc_priv = sc;
	a23_timer_timecounter.tc_frequency = sc->timer0_freq;
	FUNC4(&a23_timer_timecounter);
}