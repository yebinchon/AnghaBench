#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_9__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_10__ {int (* ddura_holdfunc ) (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ;void* ddura_chkholds; void* ddura_todelete; int /*<<< orphan*/ * ddura_errlist; int /*<<< orphan*/ * ddura_holds; } ;
typedef  TYPE_2__ dsl_dataset_user_release_arg_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_EXTRA_RESERVED ; 
 int FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsl_dataset_user_release_check ; 
 int /*<<< orphan*/  dsl_dataset_user_release_sync ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static int
FUNC13(nvlist_t *holds, nvlist_t *errlist,
    dsl_pool_t *tmpdp)
{
	dsl_dataset_user_release_arg_t ddura;
	nvpair_t *pair;
	char *pool;
	int error;

	pair = FUNC9(holds, NULL);
	if (pair == NULL)
		return (0);

	/*
	 * The release may cause snapshots to be destroyed; make sure they
	 * are not mounted.
	 */
	if (tmpdp != NULL) {
		/* Temporary holds are specified by dsobj string. */
		ddura.ddura_holdfunc = dsl_dataset_hold_obj_string;
		pool = FUNC11(tmpdp->dp_spa);
#ifdef _KERNEL
		for (pair = nvlist_next_nvpair(holds, NULL); pair != NULL;
		    pair = nvlist_next_nvpair(holds, pair)) {
			dsl_dataset_t *ds;

			dsl_pool_config_enter(tmpdp, FTAG);
			error = dsl_dataset_hold_obj_string(tmpdp,
			    nvpair_name(pair), FTAG, &ds);
			if (error == 0) {
				char name[ZFS_MAX_DATASET_NAME_LEN];
				dsl_dataset_name(ds, name);
				dsl_pool_config_exit(tmpdp, FTAG);
				dsl_dataset_rele(ds, FTAG);
				(void) zfs_unmount_snap(name);
			} else {
				dsl_pool_config_exit(tmpdp, FTAG);
			}
		}
#endif
	} else {
		/* Non-temporary holds are specified by name. */
		ddura.ddura_holdfunc = dsl_dataset_hold;
		pool = FUNC10(pair);
#ifdef _KERNEL
		for (pair = nvlist_next_nvpair(holds, NULL); pair != NULL;
		    pair = nvlist_next_nvpair(holds, pair)) {
			(void) zfs_unmount_snap(nvpair_name(pair));
		}
#endif
	}

	ddura.ddura_holds = holds;
	ddura.ddura_errlist = errlist;
	ddura.ddura_todelete = FUNC7();
	ddura.ddura_chkholds = FUNC7();

	error = FUNC6(pool, dsl_dataset_user_release_check,
	    dsl_dataset_user_release_sync, &ddura, 0,
	    ZFS_SPACE_CHECK_EXTRA_RESERVED);
	FUNC8(ddura.ddura_todelete);
	FUNC8(ddura.ddura_chkholds);

	return (error);
}