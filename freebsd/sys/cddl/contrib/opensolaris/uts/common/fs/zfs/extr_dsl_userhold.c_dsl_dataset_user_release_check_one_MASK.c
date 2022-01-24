#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_13__ {int /*<<< orphan*/  ddura_chkholds; int /*<<< orphan*/ * ddura_todelete; int /*<<< orphan*/ * ddura_errlist; } ;
typedef  TYPE_3__ dsl_dataset_user_release_arg_t ;
struct TYPE_14__ {int ds_userrefs; TYPE_2__* ds_dir; int /*<<< orphan*/  ds_is_snapshot; } ;
typedef  TYPE_4__ dsl_dataset_t ;
struct TYPE_15__ {scalar_t__ ds_userrefs_obj; int ds_num_children; } ;
struct TYPE_12__ {TYPE_1__* dd_pool; } ;
struct TYPE_11__ {int /*<<< orphan*/ * dp_meta_objset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 TYPE_7__* FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (char*,char const*,char const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (int /*<<< orphan*/ *,scalar_t__,char const*,int,int,scalar_t__*) ; 

__attribute__((used)) static int
FUNC15(dsl_dataset_user_release_arg_t *ddura,
    dsl_dataset_t *ds, nvlist_t *holds, const char *snapname)
{
	uint64_t zapobj;
	nvlist_t *holds_found;
	objset_t *mos;
	int numholds;

	if (!ds->ds_is_snapshot)
		return (FUNC1(EINVAL));

	if (FUNC10(holds))
		return (0);

	numholds = 0;
	mos = ds->ds_dir->dd_pool->dp_meta_objset;
	zapobj = FUNC3(ds)->ds_userrefs_obj;
	holds_found = FUNC7();

	for (nvpair_t *pair = FUNC11(holds, NULL); pair != NULL;
	    pair = FUNC11(holds, pair)) {
		uint64_t tmp;
		int error;
		const char *holdname = FUNC12(pair);

		if (zapobj != 0)
			error = FUNC14(mos, zapobj, holdname, 8, 1, &tmp);
		else
			error = FUNC1(ENOENT);

		/*
		 * Non-existent holds are put on the errlist, but don't
		 * cause an overall failure.
		 */
		if (error == ENOENT) {
			if (ddura->ddura_errlist != NULL) {
				char *errtag = FUNC9("%s#%s",
				    snapname, holdname);
				FUNC5(ddura->ddura_errlist, errtag,
				    ENOENT);
				FUNC13(errtag);
			}
			continue;
		}

		if (error != 0) {
			FUNC8(holds_found);
			return (error);
		}

		FUNC4(holds_found, holdname);
		numholds++;
	}

	if (FUNC0(ds) &&
	    FUNC3(ds)->ds_num_children == 1 &&
	    ds->ds_userrefs == numholds) {
		/* we need to destroy the snapshot as well */
		if (FUNC2(ds)) {
			FUNC8(holds_found);
			return (FUNC1(EBUSY));
		}
		FUNC4(ddura->ddura_todelete, snapname);
	}

	if (numholds != 0) {
		FUNC6(ddura->ddura_chkholds, snapname,
		    holds_found);
	}
	FUNC8(holds_found);

	return (0);
}