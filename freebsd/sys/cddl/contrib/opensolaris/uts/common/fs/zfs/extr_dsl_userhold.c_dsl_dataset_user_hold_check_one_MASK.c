#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_5__ {int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_1__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_6__ {scalar_t__ ds_userrefs_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E2BIG ; 
 int /*<<< orphan*/  EEXIST ; 
 int ENOENT ; 
 scalar_t__ MAXNAMELEN ; 
 scalar_t__ MAX_TAG_PREFIX_LEN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,char const*,int,int,int /*<<< orphan*/ *) ; 

int
FUNC7(dsl_dataset_t *ds, const char *htag,
    boolean_t temphold, dmu_tx_t *tx)
{
	dsl_pool_t *dp = FUNC2(tx);
	objset_t *mos = dp->dp_meta_objset;
	int error = 0;

	FUNC0(FUNC4(dp));

	if (FUNC5(htag) > MAXNAMELEN)
		return (FUNC1(E2BIG));
	/* Tempholds have a more restricted length */
	if (temphold && FUNC5(htag) + MAX_TAG_PREFIX_LEN >= MAXNAMELEN)
		return (FUNC1(E2BIG));

	/* tags must be unique (if ds already exists) */
	if (ds != NULL && FUNC3(ds)->ds_userrefs_obj != 0) {
		uint64_t value;

		error = FUNC6(mos, FUNC3(ds)->ds_userrefs_obj,
		    htag, 8, 1, &value);
		if (error == 0)
			error = FUNC1(EEXIST);
		else if (error == ENOENT)
			error = 0;
	}

	return (error);
}