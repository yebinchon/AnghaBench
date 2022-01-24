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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* hostname ; 
 double nrcvtimeout ; 
 int nreceived ; 
 double nrepeats ; 
 int ntransmitted ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 double FUNC3 (double) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ timing ; 
 double tmax ; 
 double tmin ; 
 double tsum ; 
 double tsumsq ; 

__attribute__((used)) static void
FUNC4(void)
{

	(void)FUNC1("\n--- %s ping6 statistics ---\n", hostname);
	(void)FUNC1("%ld packets transmitted, ", ntransmitted);
	(void)FUNC1("%ld packets received, ", nreceived);
	if (nrepeats)
		(void)FUNC1("+%ld duplicates, ", nrepeats);
	if (ntransmitted) {
		if (nreceived > ntransmitted)
			(void)FUNC1("-- somebody's duplicating packets!");
		else
			(void)FUNC1("%.1f%% packet loss",
			    ((((double)ntransmitted - nreceived) * 100.0) /
			    ntransmitted));
	}
	if (nrcvtimeout)
		FUNC1(", %ld packets out of wait time", nrcvtimeout);
	(void)FUNC2('\n');
	if (nreceived && timing) {
		/* Only display average to microseconds */
		double num = nreceived + nrepeats;
		double avg = tsum / num;
		double dev = FUNC3(tsumsq / num - avg * avg);
		(void)FUNC1(
		    "round-trip min/avg/max/std-dev = %.3f/%.3f/%.3f/%.3f ms\n",
		    tmin, avg, tmax, dev);
		(void)FUNC0(stdout);
	}
	(void)FUNC0(stdout);
}