#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_4__ {char const* ddha_name; } ;
typedef  TYPE_1__ dsl_destroy_head_arg_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_5__ {int /*<<< orphan*/  ds_prev_snap_txg; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  DMU_OST_ANY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  SPA_FEATURE_ASYNC_DESTROY ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_DESTROY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsl_destroy_head_begin_sync ; 
 int /*<<< orphan*/  dsl_destroy_head_check ; 
 int /*<<< orphan*/  dsl_destroy_head_sync ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

int
FUNC13(const char *name)
{
	dsl_destroy_head_arg_t ddha;
	int error;
	spa_t *spa;
	boolean_t isenabled;

#ifdef _KERNEL
	zfs_destroy_unmount_origin(name);
#endif

	error = FUNC10(name, &spa, FTAG);
	if (error != 0)
		return (error);
	isenabled = FUNC9(spa, SPA_FEATURE_ASYNC_DESTROY);
	FUNC8(spa, FTAG);

	ddha.ddha_name = name;

	if (!isenabled) {
		objset_t *os;

		error = FUNC7(name, dsl_destroy_head_check,
		    dsl_destroy_head_begin_sync, &ddha,
		    0, ZFS_SPACE_CHECK_DESTROY);
		if (error != 0)
			return (error);

		/*
		 * Head deletion is processed in one txg on old pools;
		 * remove the objects from open context so that the txg sync
		 * is not too long.
		 */
		error = FUNC4(name, DMU_OST_ANY, B_FALSE, FTAG, &os);
		if (error == 0) {
			uint64_t prev_snap_txg =
			    FUNC6(FUNC3(os))->
			    ds_prev_snap_txg;
			for (uint64_t obj = 0; error == 0;
			    error = FUNC1(os, &obj, FALSE,
			    prev_snap_txg))
				(void) FUNC0(os, obj);
			/* sync out all frees */
			FUNC11(FUNC5(os), 0);
			FUNC2(os, FTAG);
		}
	}

	return (FUNC7(name, dsl_destroy_head_check,
	    dsl_destroy_head_sync, &ddha, 0, ZFS_SPACE_CHECK_DESTROY));
}