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
struct pfioc_tm {scalar_t__ timeout; int seconds; } ;
typedef  int /*<<< orphan*/  pt ;
struct TYPE_2__ {char* name; scalar_t__ timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGETTIMEOUT ; 
 scalar_t__ PFTM_ADAPTIVE_END ; 
 scalar_t__ PFTM_ADAPTIVE_START ; 
 int PF_OPT_SHOWALL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct pfioc_tm*) ; 
 int /*<<< orphan*/  FUNC2 (struct pfioc_tm*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* pf_timeouts ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int
FUNC5(int dev, int opts)
{
	struct pfioc_tm pt;
	int i;

	if (opts & PF_OPT_SHOWALL)
		FUNC3("TIMEOUTS:");
	FUNC2(&pt, 0, sizeof(pt));
	for (i = 0; pf_timeouts[i].name; i++) {
		pt.timeout = pf_timeouts[i].timeout;
		if (FUNC1(dev, DIOCGETTIMEOUT, &pt))
			FUNC0(1, "DIOCGETTIMEOUT");
		FUNC4("%-20s %10d", pf_timeouts[i].name, pt.seconds);
		if (pf_timeouts[i].timeout >= PFTM_ADAPTIVE_START &&
		    pf_timeouts[i].timeout <= PFTM_ADAPTIVE_END)
			FUNC4(" states");
		else
			FUNC4("s");
		FUNC4("\n");
	}
	return (0);

}