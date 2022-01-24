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
typedef  int /*<<< orphan*/  nvpair_t ;
struct TYPE_5__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_6__ {scalar_t__ dduha_minor; int /*<<< orphan*/  dduha_errlist; int /*<<< orphan*/  dduha_chkholds; int /*<<< orphan*/  dduha_holds; } ;
typedef  TYPE_2__ dsl_dataset_user_hold_arg_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPA_VERSION_USERREFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (char*,char) ; 

__attribute__((used)) static int
FUNC13(void *arg, dmu_tx_t *tx)
{
	dsl_dataset_user_hold_arg_t *dduha = arg;
	dsl_pool_t *dp = FUNC2(tx);

	if (FUNC11(dp->dp_spa) < SPA_VERSION_USERREFS)
		return (FUNC0(ENOTSUP));

	if (!FUNC1(tx))
		return (0);

	for (nvpair_t *pair = FUNC8(dduha->dduha_holds, NULL);
	    pair != NULL; pair = FUNC8(dduha->dduha_holds, pair)) {
		dsl_dataset_t *ds;
		int error = 0;
		char *htag, *name;

		/* must be a snapshot */
		name = FUNC9(pair);
		if (FUNC12(name, '@') == NULL)
			error = FUNC0(EINVAL);

		if (error == 0)
			error = FUNC10(pair, &htag);

		if (error == 0)
			error = FUNC3(dp, name, FTAG, &ds);

		if (error == 0) {
			error = FUNC5(ds, htag,
			    dduha->dduha_minor != 0, tx);
			FUNC4(ds, FTAG);
		}

		if (error == 0) {
			FUNC7(dduha->dduha_chkholds, name, htag);
		} else {
			/*
			 * We register ENOENT errors so they can be correctly
			 * reported if needed, such as when all holds fail.
			 */
			FUNC6(dduha->dduha_errlist, name, error);
			if (error != ENOENT)
				return (error);
		}
	}

	return (0);
}