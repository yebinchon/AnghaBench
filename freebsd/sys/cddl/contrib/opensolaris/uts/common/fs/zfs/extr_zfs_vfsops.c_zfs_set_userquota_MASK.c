#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ z_version; scalar_t__ z_userquota_obj; scalar_t__ z_groupquota_obj; int /*<<< orphan*/  z_os; int /*<<< orphan*/  z_lock; scalar_t__ z_fuid_dirty; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  size_t zfs_userquota_prop_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ DMU_NEW_OBJECT ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int /*<<< orphan*/  DMU_OT_USERGROUP_QUOTA ; 
 int /*<<< orphan*/  EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  ENOTSUP ; 
 scalar_t__ MASTER_NODE_OBJ ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t ZFS_PROP_GROUPQUOTA ; 
 size_t ZFS_PROP_USERQUOTA ; 
 scalar_t__ ZPL_VERSION_USERSPACE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,char const*,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,scalar_t__,char*,int,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** zfs_userquota_prop_prefixes ; 

int
FUNC17(zfsvfs_t *zfsvfs, zfs_userquota_prop_t type,
    const char *domain, uint64_t rid, uint64_t quota)
{
	char buf[32];
	int err;
	dmu_tx_t *tx;
	uint64_t *objp;
	boolean_t fuid_dirtied;

	if (type != ZFS_PROP_USERQUOTA && type != ZFS_PROP_GROUPQUOTA)
		return (FUNC1(EINVAL));

	if (zfsvfs->z_version < ZPL_VERSION_USERSPACE)
		return (FUNC1(ENOTSUP));

	objp = (type == ZFS_PROP_USERQUOTA) ? &zfsvfs->z_userquota_obj :
	    &zfsvfs->z_groupquota_obj;

	err = FUNC8(zfsvfs, domain, rid, buf, B_TRUE);
	if (err)
		return (err);
	fuid_dirtied = zfsvfs->z_fuid_dirty;

	tx = FUNC6(zfsvfs->z_os);
	FUNC7(tx, *objp ? *objp : DMU_NEW_OBJECT, B_TRUE, NULL);
	if (*objp == 0) {
		FUNC7(tx, MASTER_NODE_OBJ, B_TRUE,
		    zfs_userquota_prop_prefixes[type]);
	}
	if (fuid_dirtied)
		FUNC16(zfsvfs, tx);
	err = FUNC4(tx, TXG_WAIT);
	if (err) {
		FUNC3(tx);
		return (err);
	}

	FUNC9(&zfsvfs->z_lock);
	if (*objp == 0) {
		*objp = FUNC12(zfsvfs->z_os, DMU_OT_USERGROUP_QUOTA,
		    DMU_OT_NONE, 0, tx);
		FUNC2(0 == FUNC11(zfsvfs->z_os, MASTER_NODE_OBJ,
		    zfs_userquota_prop_prefixes[type], 8, 1, objp, tx));
	}
	FUNC10(&zfsvfs->z_lock);

	if (quota == 0) {
		err = FUNC13(zfsvfs->z_os, *objp, buf, tx);
		if (err == ENOENT)
			err = 0;
	} else {
		err = FUNC14(zfsvfs->z_os, *objp, buf, 8, 1, &quota, tx);
	}
	FUNC0(err == 0);
	if (fuid_dirtied)
		FUNC15(zfsvfs, tx);
	FUNC5(tx);
	return (err);
}