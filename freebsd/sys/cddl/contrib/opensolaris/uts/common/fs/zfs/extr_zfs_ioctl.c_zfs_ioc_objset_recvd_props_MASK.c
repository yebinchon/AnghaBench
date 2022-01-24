#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ zc_nvlist_dst; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTSUP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(zfs_cmd_t *zc)
{
	int error = 0;
	nvlist_t *nv;

	/*
	 * Without this check, we would return local property values if the
	 * caller has not already received properties on or after
	 * SPA_VERSION_RECVD_PROPS.
	 */
	if (!FUNC1(zc->zc_name))
		return (FUNC0(ENOTSUP));

	if (zc->zc_nvlist_dst != 0 &&
	    (error = FUNC2(zc->zc_name, &nv)) == 0) {
		error = FUNC4(zc, nv);
		FUNC3(nv);
	}

	return (error);
}