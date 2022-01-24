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
struct pfctl {int ifname_set; int opts; int /*<<< orphan*/ * ifname; } ;

/* Variables and functions */
 int PFCTL_FLAG_OPTION ; 
 int PF_OPT_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int loadopt ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 

int
FUNC5(struct pfctl *pf, char *ifname)
{

	if ((loadopt & PFCTL_FLAG_OPTION) == 0)
		return (0);

	if (!FUNC3(ifname, "none")) {
		FUNC1(pf->ifname);
		pf->ifname = NULL;
	} else {
		pf->ifname = FUNC4(ifname);
		if (!pf->ifname)
			FUNC0(1, "pfctl_set_logif: strdup");
	}
	pf->ifname_set = 1;

	if (pf->opts & PF_OPT_VERBOSE)
		FUNC2("set loginterface %s\n", ifname);

	return (0);
}