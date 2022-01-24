#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int tc_counter_mask; int tc_quality; struct am335x_dmtimer_softc* tc_priv; int /*<<< orphan*/  tc_frequency; int /*<<< orphan*/  tc_get_timecount; int /*<<< orphan*/  tc_name; } ;
struct TYPE_3__ {TYPE_2__ tc; } ;
struct am335x_dmtimer_softc {int tclr; TYPE_1__ func; int /*<<< orphan*/  sysclk_freq; int /*<<< orphan*/  tmr_name; } ;

/* Variables and functions */
 int FUNC0 (struct am335x_dmtimer_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct am335x_dmtimer_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DMT_TCLR ; 
 int DMT_TCLR_AUTOLOAD ; 
 int DMT_TCLR_START ; 
 int /*<<< orphan*/  DMT_TCRR ; 
 int /*<<< orphan*/  DMT_TIOCP_CFG ; 
 int DMT_TIOCP_RESET ; 
 int /*<<< orphan*/  DMT_TLDR ; 
 int /*<<< orphan*/  DMT_TSICR ; 
 int DMT_TSICR_RESET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  am335x_dmtimer_delay ; 
 int /*<<< orphan*/  am335x_dmtimer_tc_get_timecount ; 
 struct am335x_dmtimer_softc* am335x_dmtimer_tc_sc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct am335x_dmtimer_softc*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC5(struct am335x_dmtimer_softc *sc)
{
	FUNC2(am335x_dmtimer_tc_sc == NULL, ("already have a timecounter"));

	/* Set up timecounter, start it, register it. */
	FUNC1(sc, DMT_TSICR, DMT_TSICR_RESET);
	while (FUNC0(sc, DMT_TIOCP_CFG) & DMT_TIOCP_RESET)
		continue;

	sc->tclr |= DMT_TCLR_START | DMT_TCLR_AUTOLOAD;
	FUNC1(sc, DMT_TLDR, 0);
	FUNC1(sc, DMT_TCRR, 0);
	FUNC1(sc, DMT_TCLR, sc->tclr);

	sc->func.tc.tc_name           = sc->tmr_name;
	sc->func.tc.tc_get_timecount  = am335x_dmtimer_tc_get_timecount;
	sc->func.tc.tc_counter_mask   = ~0u;
	sc->func.tc.tc_frequency      = sc->sysclk_freq;
	sc->func.tc.tc_quality        = 500;
	sc->func.tc.tc_priv           = sc;

	am335x_dmtimer_tc_sc = sc;
	FUNC4(&sc->func.tc);

	FUNC3(am335x_dmtimer_delay, sc);

	return (0);
}