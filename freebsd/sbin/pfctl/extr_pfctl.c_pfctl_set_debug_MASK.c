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
typedef  int /*<<< orphan*/  u_int32_t ;
struct pfctl {int debug_set; int opts; int /*<<< orphan*/  debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCSETDEBUG ; 
 int PFCTL_FLAG_OPTION ; 
 int /*<<< orphan*/  PF_DEBUG_MISC ; 
 int /*<<< orphan*/  PF_DEBUG_NOISY ; 
 int /*<<< orphan*/  PF_DEBUG_NONE ; 
 int /*<<< orphan*/  PF_DEBUG_URGENT ; 
 int PF_OPT_NOACTION ; 
 int PF_OPT_VERBOSE ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int loadopt ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

int
FUNC5(struct pfctl *pf, char *d)
{
	u_int32_t	level;

	if ((loadopt & PFCTL_FLAG_OPTION) == 0)
		return (0);

	if (!FUNC3(d, "none"))
		pf->debug = PF_DEBUG_NONE;
	else if (!FUNC3(d, "urgent"))
		pf->debug = PF_DEBUG_URGENT;
	else if (!FUNC3(d, "misc"))
		pf->debug = PF_DEBUG_MISC;
	else if (!FUNC3(d, "loud"))
		pf->debug = PF_DEBUG_NOISY;
	else {
		FUNC4("unknown debug level \"%s\"", d);
		return (-1);
	}

	pf->debug_set = 1;
	level = pf->debug;

	if ((pf->opts & PF_OPT_NOACTION) == 0)
		if (FUNC1(dev, DIOCSETDEBUG, &level))
			FUNC0(1, "DIOCSETDEBUG");

	if (pf->opts & PF_OPT_VERBOSE)
		FUNC2("set debug %s\n", d);

	return (0);
}