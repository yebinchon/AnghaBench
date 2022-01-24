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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZPROP_SOURCE ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(nvlist_t *nv, zfs_prop_t prop, uint64_t value)
{
	nvlist_t *propval;
	const char *propname = FUNC8(prop);
	uint64_t default_value;

	if (FUNC7(nv, propname, &propval) == 0) {
		FUNC0(FUNC4(propval, ZPROP_VALUE, value) == 0);
		return;
	}

	FUNC0(FUNC5(&propval, NV_UNIQUE_NAME, KM_SLEEP) == 0);
	FUNC0(FUNC4(propval, ZPROP_VALUE, value) == 0);
	/* Indicate the default source if we can. */
	if (FUNC1(prop, 8, 1, &default_value) == 0 &&
	    value == default_value) {
		FUNC0(FUNC3(propval, ZPROP_SOURCE, "") == 0);
	}
	FUNC0(FUNC2(nv, propname, propval) == 0);
	FUNC6(propval);
}