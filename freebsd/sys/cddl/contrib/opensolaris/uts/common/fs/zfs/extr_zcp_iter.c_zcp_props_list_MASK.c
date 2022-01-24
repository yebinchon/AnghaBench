#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/ * zri_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zcp_props_iter ; 
 TYPE_2__ zcp_props_list_info ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(lua_State *state)
{
	const char *dsname = FUNC9(state, 1);
	dsl_pool_t *dp = FUNC11(state)->zri_pool;
	objset_t *os;
	nvlist_t **props = FUNC5(state, sizeof (nvlist_t *));

	dsl_dataset_t *ds = FUNC10(state, dp, dsname, FTAG);
	if (ds == NULL)
		return (1); /* not reached; zcp_dataset_hold() longjmp'd */
	FUNC0(FUNC1(ds, &os));
	FUNC0(FUNC3(os, props));
	FUNC2(ds, FTAG);

	/*
	 * Set the metatable for the properties list to free it on completion.
	 */
	FUNC4(state, zcp_props_list_info.name);
	(void) FUNC8(state, -2);

	FUNC7(state, NULL);
	FUNC6(state, &zcp_props_iter, 2);
	return (1);
}