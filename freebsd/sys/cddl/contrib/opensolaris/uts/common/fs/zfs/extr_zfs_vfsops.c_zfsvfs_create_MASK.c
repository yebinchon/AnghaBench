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
typedef  int /*<<< orphan*/  zfsvfs_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DMU_OST_ZFS ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 scalar_t__ MNAMELEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC7(const char *osname, zfsvfs_t **zfvp)
{
	objset_t *os;
	zfsvfs_t *zfsvfs;
	int error;

	/*
	 * XXX: Fix struct statfs so this isn't necessary!
	 *
	 * The 'osname' is used as the filesystem's special node, which means
	 * it must fit in statfs.f_mntfromname, or else it can't be
	 * enumerated, so libzfs_mnttab_find() returns NULL, which causes
	 * 'zfs unmount' to think it's not mounted when it is.
	 */
	if (FUNC5(osname) >= MNAMELEN)
		return (FUNC0(ENAMETOOLONG));

	zfsvfs = FUNC4(sizeof (zfsvfs_t), KM_SLEEP);

	/*
	 * We claim to always be readonly so we can open snapshots;
	 * other ZPL code will prevent us from writing to snapshots.
	 */

	error = FUNC2(osname, DMU_OST_ZFS, B_TRUE, zfsvfs, &os);
	if (error != 0) {
		FUNC3(zfsvfs, sizeof (zfsvfs_t));
		return (error);
	}

	error = FUNC6(zfvp, zfsvfs, os);
	if (error != 0) {
		FUNC1(os, zfsvfs);
	}
	return (error);
}