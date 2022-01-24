#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ z_unlinked; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_11__ {scalar_t__ z_shares_dir; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  int /*<<< orphan*/  vnode_t ;
struct TYPE_12__ {TYPE_2__* vfs_data; } ;
typedef  TYPE_3__ vfs_t ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ ZFSCTL_INO_ROOT ; 
 scalar_t__ ZFSCTL_INO_SNAPDIR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*,scalar_t__,TYPE_1__**) ; 

__attribute__((used)) static int
FUNC6(vfs_t *vfsp, ino_t ino, int flags, vnode_t **vpp)
{
	zfsvfs_t	*zfsvfs = vfsp->vfs_data;
	znode_t		*zp;
	int 		err;

	/*
	 * zfs_zget() can't operate on virtual entries like .zfs/ or
	 * .zfs/snapshot/ directories, that's why we return EOPNOTSUPP.
	 * This will make NFS to switch to LOOKUP instead of using VGET.
	 */
	if (ino == ZFSCTL_INO_ROOT || ino == ZFSCTL_INO_SNAPDIR ||
	    (zfsvfs->z_shares_dir != 0 && ino == zfsvfs->z_shares_dir))
		return (EOPNOTSUPP);

	FUNC0(zfsvfs);
	err = FUNC5(zfsvfs, ino, &zp);
	if (err == 0 && zp->z_unlinked) {
		FUNC4(FUNC2(zp));
		err = EINVAL;
	}
	if (err == 0)
		*vpp = FUNC2(zp);
	FUNC1(zfsvfs);
	if (err == 0) {
		err = FUNC3(*vpp, flags);
		if (err != 0)
			FUNC4(*vpp);
	}
	if (err != 0)
		*vpp = NULL;
	return (err);
}