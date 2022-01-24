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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clockstats ; 
 int /*<<< orphan*/  cryptostats ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  loopstats ; 
 int /*<<< orphan*/  ntpd_time_stepped ; 
 int /*<<< orphan*/  peerstats ; 
 int /*<<< orphan*/  protostats ; 
 int /*<<< orphan*/  rawstats ; 
 int /*<<< orphan*/  statsdir ; 
 int /*<<< orphan*/ * step_callback ; 
 int /*<<< orphan*/  sysstats ; 
 int /*<<< orphan*/  timingstats ; 
 int /*<<< orphan*/  uninit_util ; 

void
FUNC2(void)
{
	FUNC1(statsdir, "peerstats",	  &peerstats);
	FUNC1(statsdir, "loopstats",	  &loopstats);
	FUNC1(statsdir, "clockstats",  &clockstats);
	FUNC1(statsdir, "rawstats",	  &rawstats);
	FUNC1(statsdir, "sysstats",	  &sysstats);
	FUNC1(statsdir, "protostats",  &protostats);
	FUNC1(statsdir, "cryptostats", &cryptostats);
	FUNC1(statsdir, "timingstats", &timingstats);
	/*
	 * register with libntp ntp_set_tod() to call us back
	 * when time is stepped.
	 */
	step_callback = &ntpd_time_stepped;
#ifdef DEBUG
	atexit(&uninit_util);
#endif /* DEBUG */
}