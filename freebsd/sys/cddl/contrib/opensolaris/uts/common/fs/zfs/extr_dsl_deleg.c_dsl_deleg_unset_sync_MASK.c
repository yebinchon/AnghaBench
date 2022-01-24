#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_6__ {int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_1__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dir_t ;
struct TYPE_7__ {int /*<<< orphan*/ * dda_nvlist; int /*<<< orphan*/  dda_name; } ;
typedef  TYPE_2__ dsl_deleg_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_8__ {scalar_t__ dd_deleg_zapobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char const*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,scalar_t__,char const*,int,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14(void *arg, dmu_tx_t *tx)
{
	dsl_deleg_arg_t *dda = arg;
	dsl_dir_t *dd;
	dsl_pool_t *dp = FUNC2(tx);
	objset_t *mos = dp->dp_meta_objset;
	nvpair_t *whopair = NULL;
	uint64_t zapobj;

	FUNC1(FUNC3(dp, dda->dda_name, FTAG, &dd, NULL));
	zapobj = FUNC4(dd)->dd_deleg_zapobj;
	if (zapobj == 0) {
		FUNC5(dd, FTAG);
		return;
	}

	while ((whopair = FUNC6(dda->dda_nvlist, whopair))) {
		const char *whokey = FUNC7(whopair);
		nvlist_t *perms;
		nvpair_t *permpair = NULL;
		uint64_t jumpobj;

		if (FUNC8(whopair, &perms) != 0) {
			if (FUNC12(mos, zapobj, whokey, 8,
			    1, &jumpobj) == 0) {
				(void) FUNC13(mos, zapobj, whokey, tx);
				FUNC0(0 == FUNC11(mos, jumpobj, tx));
			}
			FUNC9(dd, "permission who remove",
			    tx, "%s", whokey);
			continue;
		}

		if (FUNC12(mos, zapobj, whokey, 8, 1, &jumpobj) != 0)
			continue;

		while ((permpair = FUNC6(perms, permpair))) {
			const char *perm = FUNC7(permpair);
			uint64_t n = 0;

			(void) FUNC13(mos, jumpobj, perm, tx);
			if (FUNC10(mos, jumpobj, &n) == 0 && n == 0) {
				(void) FUNC13(mos, zapobj,
				    whokey, tx);
				FUNC0(0 == FUNC11(mos,
				    jumpobj, tx));
			}
			FUNC9(dd, "permission remove", tx,
			    "%s %s", whokey, perm);
		}
	}
	FUNC5(dd, FTAG);
}