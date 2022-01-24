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
typedef  int /*<<< orphan*/  zfs_prop_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(nvlist_t *nv, zfs_prop_t prop, const char *value)
{
	nvlist_t *propval;
	const char *propname = FUNC6(prop);

	if (FUNC5(nv, propname, &propval) == 0) {
		FUNC0(FUNC2(propval, ZPROP_VALUE, value) == 0);
		return;
	}

	FUNC0(FUNC3(&propval, NV_UNIQUE_NAME, KM_SLEEP) == 0);
	FUNC0(FUNC2(propval, ZPROP_VALUE, value) == 0);
	FUNC0(FUNC1(nv, propname, propval) == 0);
	FUNC4(propval);
}