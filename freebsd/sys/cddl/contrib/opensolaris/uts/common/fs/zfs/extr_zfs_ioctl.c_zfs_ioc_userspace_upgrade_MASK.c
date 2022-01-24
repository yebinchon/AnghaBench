#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  z_vfs; int /*<<< orphan*/ * z_os; } ;
typedef  TYPE_1__ zfsvfs_t ;
struct TYPE_9__ {int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC11(zfs_cmd_t *zc)
{
	objset_t *os;
	int error = 0;
	zfsvfs_t *zfsvfs;

	if (FUNC7(zc->zc_name, &zfsvfs) == 0) {
		if (!FUNC6(zfsvfs->z_os)) {
			/*
			 * If userused is not enabled, it may be because the
			 * objset needs to be closed & reopened (to grow the
			 * objset_phys_t).  Suspend/resume the fs will do that.
			 */
			dsl_dataset_t *ds, *newds;

			ds = FUNC1(zfsvfs->z_os);
			error = FUNC10(zfsvfs);
			if (error == 0) {
				FUNC3(ds, &newds,
				    zfsvfs);
				error = FUNC9(zfsvfs, newds);
			}
		}
		if (error == 0)
			error = FUNC5(zfsvfs->z_os);
#ifdef illumos
		VFS_RELE(zfsvfs->z_vfs);
#else
		FUNC8(zfsvfs->z_vfs);
#endif
	} else {
		/* XXX kind of reading contents without owning */
		error = FUNC2(zc->zc_name, FTAG, &os);
		if (error != 0)
			return (error);

		error = FUNC5(os);
		FUNC4(os, FTAG);
	}

	return (error);
}