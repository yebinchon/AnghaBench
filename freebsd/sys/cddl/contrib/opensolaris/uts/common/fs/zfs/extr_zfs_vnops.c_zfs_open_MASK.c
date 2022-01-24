#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int z_pflags; scalar_t__ z_size; int /*<<< orphan*/  z_sync_cnt; TYPE_2__* z_zfsvfs; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_11__ {scalar_t__ z_vscan; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int /*<<< orphan*/  caller_context_t ;
struct TYPE_12__ {scalar_t__ v_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  EPERM ; 
 int FAPPEND ; 
 int FDSYNC ; 
 int FSYNC ; 
 int FWRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ VREG ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int ZFS_APPENDONLY ; 
 int ZFS_AV_QUARANTINED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_4__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC9(vnode_t **vpp, int flag, cred_t *cr, caller_context_t *ct)
{
	znode_t	*zp = FUNC1(*vpp);
	zfsvfs_t *zfsvfs = zp->z_zfsvfs;

	FUNC2(zfsvfs);
	FUNC4(zp);

	if ((flag & FWRITE) && (zp->z_pflags & ZFS_APPENDONLY) &&
	    ((flag & FAPPEND) == 0)) {
		FUNC3(zfsvfs);
		return (FUNC0(EPERM));
	}

	if (!FUNC8(zp) && zp->z_zfsvfs->z_vscan &&
	    FUNC5(zp)->v_type == VREG &&
	    !(zp->z_pflags & ZFS_AV_QUARANTINED) && zp->z_size > 0) {
		if (FUNC7(*vpp, cr, 0) != 0) {
			FUNC3(zfsvfs);
			return (FUNC0(EACCES));
		}
	}

	/* Keep a count of the synchronous opens in the znode */
	if (flag & (FSYNC | FDSYNC))
		FUNC6(&zp->z_sync_cnt);

	FUNC3(zfsvfs);
	return (0);
}