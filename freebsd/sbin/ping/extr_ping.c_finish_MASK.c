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
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* hostname ; 
 double nrcvtimeout ; 
 int nreceived ; 
 double nrepeats ; 
 int ntransmitted ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC5 (double) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ timing ; 
 double tmax ; 
 double tmin ; 
 double tsum ; 
 double tsumsq ; 

__attribute__((used)) static void
FUNC6(void)
{

	(void)FUNC4(SIGINT, SIG_IGN);
	(void)FUNC4(SIGALRM, SIG_IGN);
	(void)FUNC3('\n');
	(void)FUNC1(stdout);
	(void)FUNC2("--- %s ping statistics ---\n", hostname);
	(void)FUNC2("%ld packets transmitted, ", ntransmitted);
	(void)FUNC2("%ld packets received, ", nreceived);
	if (nrepeats)
		(void)FUNC2("+%ld duplicates, ", nrepeats);
	if (ntransmitted) {
		if (nreceived > ntransmitted)
			(void)FUNC2("-- somebody's printing up packets!");
		else
			(void)FUNC2("%.1f%% packet loss",
			    ((ntransmitted - nreceived) * 100.0) /
			    ntransmitted);
	}
	if (nrcvtimeout)
		(void)FUNC2(", %ld packets out of wait time", nrcvtimeout);
	(void)FUNC3('\n');
	if (nreceived && timing) {
		double n = nreceived + nrepeats;
		double avg = tsum / n;
		double vari = tsumsq / n - avg * avg;
		(void)FUNC2(
		    "round-trip min/avg/max/stddev = %.3f/%.3f/%.3f/%.3f ms\n",
		    tmin, avg, tmax, FUNC5(vari));
	}

	if (nreceived)
		FUNC0(0);
	else
		FUNC0(2);
}