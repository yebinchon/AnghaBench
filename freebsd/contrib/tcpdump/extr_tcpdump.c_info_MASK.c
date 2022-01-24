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
struct pcap_stat {scalar_t__ ps_ifdrop; int ps_recv; int ps_drop; } ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ infoprint ; 
 int packets_captured ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct pcap_stat*) ; 
 int /*<<< orphan*/  pd ; 
 char* program_name ; 
 int /*<<< orphan*/  FUNC5 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC6(register int verbose)
{
	struct pcap_stat stats;

	/*
	 * Older versions of libpcap didn't set ps_ifdrop on some
	 * platforms; initialize it to 0 to handle that.
	 */
	stats.ps_ifdrop = 0;
	if (FUNC4(pd, &stats) < 0) {
		(void)FUNC1(stderr, "pcap_stats: %s\n", FUNC3(pd));
		infoprint = 0;
		return;
	}

	if (!verbose)
		FUNC1(stderr, "%s: ", program_name);

	(void)FUNC1(stderr, "%u packet%s captured", packets_captured,
	    FUNC0(packets_captured));
	if (!verbose)
		FUNC2(", ", stderr);
	else
		FUNC5('\n', stderr);
	(void)FUNC1(stderr, "%u packet%s received by filter", stats.ps_recv,
	    FUNC0(stats.ps_recv));
	if (!verbose)
		FUNC2(", ", stderr);
	else
		FUNC5('\n', stderr);
	(void)FUNC1(stderr, "%u packet%s dropped by kernel", stats.ps_drop,
	    FUNC0(stats.ps_drop));
	if (stats.ps_ifdrop != 0) {
		if (!verbose)
			FUNC2(", ", stderr);
		else
			FUNC5('\n', stderr);
		(void)FUNC1(stderr, "%ld packet%s dropped by interface\n",
		    stats.ps_ifdrop, FUNC0(stats.ps_ifdrop));
	} else
		FUNC5('\n', stderr);
	infoprint = 0;
}