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
struct TYPE_3__ {int /*<<< orphan*/  zc_perm_action; int /*<<< orphan*/  zc_objset_type; int /*<<< orphan*/  zc_cookie; int /*<<< orphan*/  zc_value; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(zfs_cmd_t *zc)
{
	int error;
	dsl_pool_t *dp;
	dsl_dataset_t *new, *old;

	error = FUNC3(zc->zc_name, FTAG, &dp);
	if (error != 0)
		return (error);
	error = FUNC0(dp, zc->zc_name, FTAG, &new);
	if (error != 0) {
		FUNC4(dp, FTAG);
		return (error);
	}
	error = FUNC0(dp, zc->zc_value, FTAG, &old);
	if (error != 0) {
		FUNC1(new, FTAG);
		FUNC4(dp, FTAG);
		return (error);
	}

	error = FUNC2(old, new, &zc->zc_cookie,
	    &zc->zc_objset_type, &zc->zc_perm_action);
	FUNC1(old, FTAG);
	FUNC1(new, FTAG);
	FUNC4(dp, FTAG);
	return (error);
}