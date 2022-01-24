#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * z_vfs; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  int /*<<< orphan*/  vfs_t ;
struct TYPE_8__ {int /*<<< orphan*/  os_user_ptr_lock; } ;
typedef  TYPE_2__ objset_t ;

/* Variables and functions */
 scalar_t__ DMU_OST_ZFS ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ESRCH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(objset_t *os, vfs_t **vfsp)
{
	zfsvfs_t *zfvp;
	int error = 0;

	if (FUNC2(os) != DMU_OST_ZFS) {
		return (FUNC0(EINVAL));
	}

	FUNC3(&os->os_user_ptr_lock);
	zfvp = FUNC1(os);
	if (zfvp) {
		*vfsp = zfvp->z_vfs;
		FUNC5(zfvp->z_vfs);
	} else {
		error = FUNC0(ESRCH);
	}
	FUNC4(&os->os_user_ptr_lock);
	return (error);
}