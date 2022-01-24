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
struct group {int /*<<< orphan*/  gr_name; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int NGROUPS_MAX ; 
 int /*<<< orphan*/  _SC_NGROUPS_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct group* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * groups_byname ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int ngroups ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(const char *user, gid_t base)
{
	gid_t *groups_bygid;
	int i, j;
	struct group *gr;

	if (ngroups > 0)
		FUNC2();

	ngroups = NGROUPS_MAX;
#if defined(HAVE_SYSCONF) && defined(_SC_NGROUPS_MAX)
	ngroups = MAX(NGROUPS_MAX, sysconf(_SC_NGROUPS_MAX));
#endif

	groups_bygid = FUNC7(ngroups, sizeof(*groups_bygid));
	groups_byname = FUNC7(ngroups, sizeof(*groups_byname));

	if (FUNC4(user, base, groups_bygid, &ngroups) == -1)
		FUNC5("getgrouplist: groups list too small");
	for (i = 0, j = 0; i < ngroups; i++)
		if ((gr = FUNC3(groups_bygid[i])) != NULL)
			groups_byname[j++] = FUNC8(gr->gr_name);
	FUNC1(groups_bygid);
	return (ngroups = j);
}