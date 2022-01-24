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
struct am335x_dmtimer_softc {int tmr_num; int /*<<< orphan*/  tmr_name; int /*<<< orphan*/ * tmr_mem_res; int /*<<< orphan*/  tmr_mem_rid; int /*<<< orphan*/  sysclk_freq; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  clk_ident_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ ET_TMR_NUM ; 
 int /*<<< orphan*/  INVALID_CLK_IDENT ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYSCLK_CLK ; 
 int /*<<< orphan*/  SYS_CLK ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ TC_TMR_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct am335x_dmtimer_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct am335x_dmtimer_softc*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct am335x_dmtimer_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct am335x_dmtimer_softc *sc;
	clk_ident_t timer_id;
	int err;

	sc = FUNC3(dev);
	sc->dev = dev;

	/* Get the base clock frequency. */
	if ((err = FUNC9(SYS_CLK, &sc->sysclk_freq)) != 0)
		return (err);

	/* Enable clocks and power on the device. */
	if ((timer_id = FUNC6(dev)) == INVALID_CLK_IDENT)
		return (ENXIO);
	if ((err = FUNC10(timer_id, SYSCLK_CLK)) != 0)
		return (err);
	if ((err = FUNC8(timer_id)) != 0)
		return (err);

	/* Request the memory resources. */
	sc->tmr_mem_res = FUNC2(dev, SYS_RES_MEMORY,
	    &sc->tmr_mem_rid, RF_ACTIVE);
	if (sc->tmr_mem_res == NULL) {
		return (ENXIO);
	}

	sc->tmr_num = FUNC7(dev, "timer");
	FUNC5(sc->tmr_name, sizeof(sc->tmr_name), "DMTimer%d", sc->tmr_num);

	/*
	 * Go set up either a timecounter or eventtimer.  We wouldn't have
	 * attached if we weren't one or the other.
	 */
	if (sc->tmr_num == ET_TMR_NUM)
		FUNC0(sc);
	else if (sc->tmr_num == TC_TMR_NUM)
		FUNC1(sc);
	else
		FUNC4("am335x_dmtimer: bad timer number %d", sc->tmr_num);

	return (0);
}