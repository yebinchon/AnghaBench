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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int EINVAL ; 
 int /*<<< orphan*/  ZCP_ARG_ARGLIST ; 
 int /*<<< orphan*/  ZCP_ARG_INSTRLIMIT ; 
 int /*<<< orphan*/  ZCP_ARG_MEMLIMIT ; 
 int /*<<< orphan*/  ZCP_ARG_PROGRAM ; 
 int /*<<< orphan*/  ZCP_ARG_SYNC ; 
 scalar_t__ ZCP_DEFAULT_INSTRLIMIT ; 
 scalar_t__ ZCP_DEFAULT_MEMLIMIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC4 (char const*,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ zfs_lua_max_instrlimit ; 
 scalar_t__ zfs_lua_max_memlimit ; 

__attribute__((used)) static int
FUNC5(const char *poolname, nvlist_t *innvl,
    nvlist_t *outnvl)
{
	char *program;
	uint64_t instrlimit, memlimit;
	boolean_t sync_flag;
	nvpair_t *nvarg = NULL;

	if (0 != FUNC2(innvl, ZCP_ARG_PROGRAM, &program)) {
		return (EINVAL);
	}
	if (0 != FUNC0(innvl, ZCP_ARG_SYNC, &sync_flag)) {
		sync_flag = B_TRUE;
	}
	if (0 != FUNC3(innvl, ZCP_ARG_INSTRLIMIT, &instrlimit)) {
		instrlimit = ZCP_DEFAULT_INSTRLIMIT;
	}
	if (0 != FUNC3(innvl, ZCP_ARG_MEMLIMIT, &memlimit)) {
		memlimit = ZCP_DEFAULT_MEMLIMIT;
	}
	if (0 != FUNC1(innvl, ZCP_ARG_ARGLIST, &nvarg)) {
		return (EINVAL);
	}

	if (instrlimit == 0 || instrlimit > zfs_lua_max_instrlimit)
		return (EINVAL);
	if (memlimit == 0 || memlimit > zfs_lua_max_memlimit)
		return (EINVAL);

	return (FUNC4(poolname, program, sync_flag, instrlimit, memlimit,
	    nvarg, outnvl));
}