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
struct TYPE_2__ {scalar_t__ et_frequency; } ;
struct mv_timer_softc {TYPE_1__ et; } ;
struct eventtimer {scalar_t__ et_priv; } ;
typedef  int sbintime_t ;

/* Variables and functions */
 int CPU_TIMER0_AUTO ; 
 int CPU_TIMER0_EN ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct eventtimer *et, sbintime_t first, sbintime_t period)
{
	struct	mv_timer_softc *sc;
	uint32_t val, val1;

	/* Calculate dividers. */
	sc = (struct mv_timer_softc *)et->et_priv;
	if (period != 0)
		val = ((uint32_t)sc->et.et_frequency * period) >> 32;
	else
		val = 0;
	if (first != 0)
		val1 = ((uint32_t)sc->et.et_frequency * first) >> 32;
	else
		val1 = val;

	/* Apply configuration. */
	FUNC3(0, val);
	FUNC1(0, val1);
	val = FUNC0();
	val |= CPU_TIMER0_EN;
	if (period != 0)
		val |= CPU_TIMER0_AUTO;
	else
		val &= ~CPU_TIMER0_AUTO;
	FUNC2(val);
	return (0);
}