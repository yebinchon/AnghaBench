#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  zc_name; int /*<<< orphan*/  zc_sendobj; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_DELEG_PERM_SEND ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
	dsl_pool_t *dp;
	dsl_dataset_t *ds;
	char *cp;
	int error;

	/*
	 * Generate the current snapshot name from the given objsetid, then
	 * use that name for the secpolicy/zone checks.
	 */
	cp = FUNC6(zc->zc_name, '@');
	if (cp == NULL)
		return (FUNC0(EINVAL));
	error = FUNC4(zc->zc_name, FTAG, &dp);
	if (error != 0)
		return (error);

	error = FUNC1(dp, zc->zc_sendobj, FTAG, &ds);
	if (error != 0) {
		FUNC5(dp, FTAG);
		return (error);
	}

	FUNC2(ds, zc->zc_name);

	error = FUNC7(zc->zc_name, ds,
	    ZFS_DELEG_PERM_SEND, cr);
	FUNC3(ds, FTAG);
	FUNC5(dp, FTAG);

	return (error);
}