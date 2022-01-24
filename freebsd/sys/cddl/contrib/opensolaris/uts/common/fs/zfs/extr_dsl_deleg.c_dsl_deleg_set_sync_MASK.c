#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_11__ {int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_12__ {int /*<<< orphan*/  dd_dbuf; } ;
typedef  TYPE_2__ dsl_dir_t ;
struct TYPE_13__ {int /*<<< orphan*/ * dda_nvlist; int /*<<< orphan*/  dda_name; } ;
typedef  TYPE_3__ dsl_deleg_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_14__ {scalar_t__ dd_deleg_zapobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_OT_DSL_PERMS ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,int /*<<< orphan*/ *,char*,char const*,char const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,scalar_t__,char const*,int,int,scalar_t__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,scalar_t__,char const*,int,int,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(void *arg, dmu_tx_t *tx)
{
	dsl_deleg_arg_t *dda = arg;
	dsl_dir_t *dd;
	dsl_pool_t *dp = FUNC3(tx);
	objset_t *mos = dp->dp_meta_objset;
	nvpair_t *whopair = NULL;
	uint64_t zapobj;

	FUNC1(FUNC4(dp, dda->dda_name, FTAG, &dd, NULL));

	zapobj = FUNC5(dd)->dd_deleg_zapobj;
	if (zapobj == 0) {
		FUNC2(dd->dd_dbuf, tx);
		zapobj = FUNC5(dd)->dd_deleg_zapobj = FUNC11(mos,
		    DMU_OT_DSL_PERMS, DMU_OT_NONE, 0, tx);
	}

	while ((whopair = FUNC8(dda->dda_nvlist, whopair))) {
		const char *whokey = FUNC9(whopair);
		nvlist_t *perms;
		nvpair_t *permpair = NULL;
		uint64_t jumpobj;

		perms = FUNC7(whopair);

		if (FUNC13(mos, zapobj, whokey, 8, 1, &jumpobj) != 0) {
			jumpobj = FUNC12(mos, DMU_OT_DSL_PERMS,
			    zapobj, whokey, tx);
		}

		while ((permpair = FUNC8(perms, permpair))) {
			const char *perm = FUNC9(permpair);
			uint64_t n = 0;

			FUNC0(FUNC14(mos, jumpobj,
			    perm, 8, 1, &n, tx) == 0);
			FUNC10(dd, "permission update", tx,
			    "%s %s", whokey, perm);
		}
	}
	FUNC6(dd, FTAG);
}