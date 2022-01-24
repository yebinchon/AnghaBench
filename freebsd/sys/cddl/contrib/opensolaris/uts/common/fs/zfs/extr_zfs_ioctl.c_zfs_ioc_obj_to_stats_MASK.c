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
struct TYPE_3__ {int /*<<< orphan*/  zc_value; int /*<<< orphan*/  zc_stat; int /*<<< orphan*/  zc_obj; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 scalar_t__ DMU_OST_ZFS ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(zfs_cmd_t *zc)
{
	objset_t *os;
	int error;

	/* XXX reading from objset not owned */
	if ((error = FUNC1(zc->zc_name, FTAG, &os)) != 0)
		return (error);
	if (FUNC3(os) != DMU_OST_ZFS) {
		FUNC2(os, FTAG);
		return (FUNC0(EINVAL));
	}
	error = FUNC4(os, zc->zc_obj, &zc->zc_stat, zc->zc_value,
	    sizeof (zc->zc_value));
	FUNC2(os, FTAG);

	return (error);
}