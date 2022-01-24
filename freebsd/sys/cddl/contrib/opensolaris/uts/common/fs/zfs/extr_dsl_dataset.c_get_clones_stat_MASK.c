#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_PROP_CLONES ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(dsl_dataset_t *ds, nvlist_t *nv)
{
	nvlist_t *propval = FUNC2();
	nvlist_t *val;

	/*
	 * We use nvlist_alloc() instead of fnvlist_alloc() because the
	 * latter would allocate the list with NV_UNIQUE_NAME flag.
	 * As a result, every time a clone name is appended to the list
	 * it would be (linearly) searched for for a duplicate name.
	 * We already know that all clone names must be unique and we
	 * want avoid the quadratic complexity of double-checking that
	 * because we can have a large number of clones.
	 */
	FUNC0(FUNC4(&val, 0, KM_SLEEP));

	if (FUNC3(ds, val) == 0) {
		FUNC1(propval, ZPROP_VALUE, val);
		FUNC1(nv, FUNC6(ZFS_PROP_CLONES),
		    propval);
	}

	FUNC5(val);
	FUNC5(propval);
}