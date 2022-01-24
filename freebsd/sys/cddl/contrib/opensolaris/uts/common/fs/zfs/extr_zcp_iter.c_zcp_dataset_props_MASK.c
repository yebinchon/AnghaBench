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
 int ZFS_NUM_PROPS ; 
 int ZFS_PROP_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(dsl_dataset_t *ds, nvlist_t *nv)
{
	for (int prop = ZFS_PROP_TYPE; prop < ZFS_NUM_PROPS; prop++) {
		/* Do not display hidden props */
		if (!FUNC3(prop))
			continue;
		/* Do not display props not valid for this dataset */
		if (!FUNC1(ds, prop))
			continue;
		FUNC0(nv, FUNC2(prop));
	}
}