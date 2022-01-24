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
struct TYPE_3__ {int /*<<< orphan*/  zc_name; int /*<<< orphan*/  zc_defer_destroy; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  scalar_t__ dmu_objset_type_t ;

/* Variables and functions */
 scalar_t__ DMU_OST_ZFS ; 
 scalar_t__ DMU_OST_ZVOL ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(zfs_cmd_t *zc)
{
	objset_t *os;
	dmu_objset_type_t ost;
	int err;

	err = FUNC0(zc->zc_name, FTAG, &os);
	if (err != 0)
		return (err);
	ost = FUNC2(os);
	FUNC1(os, FTAG);

	if (ost == DMU_OST_ZFS)
		FUNC6(zc->zc_name);

	if (FUNC5(zc->zc_name, '@'))
		err = FUNC4(zc->zc_name, zc->zc_defer_destroy);
	else
		err = FUNC3(zc->zc_name);
	if (ost == DMU_OST_ZVOL && err == 0)
#ifdef __FreeBSD__
		zvol_remove_minors(zc->zc_name);
#else
		(void) FUNC7(zc->zc_name);
#endif
	return (err);
}