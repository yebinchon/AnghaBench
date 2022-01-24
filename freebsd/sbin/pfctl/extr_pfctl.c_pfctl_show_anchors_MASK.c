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
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  sub ;
struct pfioc_ruleset {char* path; scalar_t__ nr; char* name; } ;
typedef  int /*<<< orphan*/  pr ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGETRULESET ; 
 int /*<<< orphan*/  DIOCGETRULESETS ; 
 scalar_t__ EINVAL ; 
 int MAXPATHLEN ; 
 int PF_OPT_VERBOSE ; 
 int /*<<< orphan*/  PF_RESERVED_ANCHOR ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct pfioc_ruleset*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pfioc_ruleset*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

int
FUNC8(int dev, int opts, char *anchorname)
{
	struct pfioc_ruleset	 pr;
	u_int32_t		 mnr, nr;

	FUNC4(&pr, 0, sizeof(pr));
	FUNC3(pr.path, anchorname, sizeof(pr.path));
	if (FUNC2(dev, DIOCGETRULESETS, &pr)) {
		if (errno == EINVAL)
			FUNC1(stderr, "Anchor '%s' not found.\n",
			    anchorname);
		else
			FUNC0(1, "DIOCGETRULESETS");
		return (-1);
	}
	mnr = pr.nr;
	for (nr = 0; nr < mnr; ++nr) {
		char sub[MAXPATHLEN];

		pr.nr = nr;
		if (FUNC2(dev, DIOCGETRULESET, &pr))
			FUNC0(1, "DIOCGETRULESET");
		if (!FUNC6(pr.name, PF_RESERVED_ANCHOR))
			continue;
		sub[0] = 0;
		if (pr.path[0]) {
			FUNC7(sub, pr.path, sizeof(sub));
			FUNC7(sub, "/", sizeof(sub));
		}
		FUNC7(sub, pr.name, sizeof(sub));
		if (sub[0] != '_' || (opts & PF_OPT_VERBOSE))
			FUNC5("  %s\n", sub);
		if ((opts & PF_OPT_VERBOSE) && FUNC8(dev, opts, sub))
			return (-1);
	}
	return (0);
}