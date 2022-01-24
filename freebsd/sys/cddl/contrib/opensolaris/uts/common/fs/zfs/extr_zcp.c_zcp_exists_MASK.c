#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * zri_pool; } ;
typedef  TYPE_1__ zcp_run_info_t ;
struct TYPE_6__ {int /*<<< orphan*/  kwargs; int /*<<< orphan*/  pargs; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ zcp_lib_info_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int EIO ; 
 int ENOENT ; 
 int EXDEV ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__ zcp_exists_info ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(lua_State *state)
{
	zcp_run_info_t *ri = FUNC6(state);
	dsl_pool_t *dp = ri->zri_pool;
	zcp_lib_info_t *libinfo = &zcp_exists_info;

	FUNC5(state, libinfo->name, libinfo->pargs, libinfo->kwargs);

	const char *dsname = FUNC4(state, 1);

	dsl_dataset_t *ds;
	int error = FUNC0(dp, dsname, FTAG, &ds);
	if (error == 0) {
		FUNC1(ds, FTAG);
		FUNC3(state, B_TRUE);
	} else if (error == ENOENT) {
		FUNC3(state, B_FALSE);
	} else if (error == EXDEV) {
		return (FUNC2(state, "dataset '%s' is not in the "
		    "target pool", dsname));
	} else if (error == EIO) {
		return (FUNC2(state, "I/O error opening dataset '%s'",
		    dsname));
	} else if (error != 0) {
		return (FUNC2(state, "unexpected error %d", error));
	}

	return (1);
}