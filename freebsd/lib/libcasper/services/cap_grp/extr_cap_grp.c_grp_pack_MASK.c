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
typedef  int /*<<< orphan*/  uint64_t ;
struct group {char* gr_name; char* gr_passwd; char** gr_mem; scalar_t__ gr_gid; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  nvlname ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC5 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static bool
FUNC6(const nvlist_t *limits, const struct group *grp, nvlist_t *nvl)
{
	char nvlname[64];
	int n;

	if (grp == NULL)
		return (true);

	/*
	 * If either name or GID is allowed, we allow it.
	 */
	if (!FUNC2(limits, grp->gr_name, grp->gr_gid))
		return (false);

	if (FUNC1(limits, "gr_name"))
		FUNC4(nvl, "gr_name", grp->gr_name);
	else
		FUNC4(nvl, "gr_name", "");
	if (FUNC1(limits, "gr_passwd"))
		FUNC4(nvl, "gr_passwd", grp->gr_passwd);
	else
		FUNC4(nvl, "gr_passwd", "");
	if (FUNC1(limits, "gr_gid"))
		FUNC3(nvl, "gr_gid", (uint64_t)grp->gr_gid);
	else
		FUNC3(nvl, "gr_gid", (uint64_t)-1);
	if (FUNC1(limits, "gr_mem") && grp->gr_mem[0] != NULL) {
		unsigned int ngroups;

		for (ngroups = 0; grp->gr_mem[ngroups] != NULL; ngroups++) {
			n = FUNC5(nvlname, sizeof(nvlname), "gr_mem[%u]",
			    ngroups);
			FUNC0(n > 0 && n < (ssize_t)sizeof(nvlname));
			FUNC4(nvl, nvlname, grp->gr_mem[ngroups]);
		}
		FUNC3(nvl, "gr_nmem", (uint64_t)ngroups);
	}

	return (true);
}