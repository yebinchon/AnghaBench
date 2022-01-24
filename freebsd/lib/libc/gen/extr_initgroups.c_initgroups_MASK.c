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
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  _SC_NGROUPS_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(const char *uname, gid_t agroup)
{
	int ngroups, ret;
	long ngroups_max;
	gid_t *groups;

	/*
	 * Provide space for one group more than possible to allow
	 * setgroups to fail and set errno.
	 */
	ngroups_max = FUNC4(_SC_NGROUPS_MAX) + 2;
	if ((groups = FUNC2(sizeof(*groups) * ngroups_max)) == NULL)
		return (ENOMEM);

	ngroups = (int)ngroups_max;
	FUNC1(uname, agroup, groups, &ngroups);
	ret = FUNC3(ngroups, groups);
	FUNC0(groups);
	return (ret);
}