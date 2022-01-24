#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  longlong_t ;
struct TYPE_10__ {int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_2__ dsl_pool_t ;
struct TYPE_11__ {scalar_t__ ds_userrefs; int /*<<< orphan*/  ds_object; TYPE_1__* ds_dir; } ;
typedef  TYPE_3__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_12__ {int /*<<< orphan*/  ds_userrefs_obj; } ;
struct TYPE_9__ {TYPE_2__* dd_pool; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(dsl_dataset_t *ds, nvlist_t *holds,
    dmu_tx_t *tx)
{
	dsl_pool_t *dp = ds->ds_dir->dd_pool;
	objset_t *mos = dp->dp_meta_objset;

	for (nvpair_t *pair = FUNC4(holds, NULL); pair != NULL;
	    pair = FUNC4(holds, pair)) {
		int error;
		const char *holdname = FUNC5(pair);

		/* Remove temporary hold if one exists. */
		error = FUNC3(dp, ds->ds_object, holdname, tx);
		FUNC0(error == 0 || error == ENOENT);

		FUNC1(FUNC7(mos, FUNC2(ds)->ds_userrefs_obj,
		    holdname, tx));
		ds->ds_userrefs--;

		FUNC6(ds, "release", tx,
		    "tag=%s refs=%lld", holdname, (longlong_t)ds->ds_userrefs);
	}
}