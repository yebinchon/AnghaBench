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
struct TYPE_10__ {int z_pflags; scalar_t__ z_size; TYPE_2__* z_zfsvfs; int /*<<< orphan*/  z_sync_cnt; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_11__ {scalar_t__ z_vscan; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  offset_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int /*<<< orphan*/  caller_context_t ;
struct TYPE_12__ {scalar_t__ v_type; } ;

/* Variables and functions */
 int FDSYNC ; 
 int FSYNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ VREG ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int ZFS_AV_QUARANTINED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_4__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC12(vnode_t *vp, int flag, int count, offset_t offset, cred_t *cr,
    caller_context_t *ct)
{
	znode_t	*zp = FUNC1(vp);
	zfsvfs_t *zfsvfs = zp->z_zfsvfs;

	/*
	 * Clean up any locks held by this process on the vp.
	 */
	FUNC7(vp, FUNC9(), 0);
	FUNC8(vp, FUNC9());

	FUNC2(zfsvfs);
	FUNC4(zp);

	/* Decrement the synchronous opens in the znode */
	if ((flag & (FSYNC | FDSYNC)) && (count == 1))
		FUNC6(&zp->z_sync_cnt);

	if (!FUNC11(zp) && zp->z_zfsvfs->z_vscan &&
	    FUNC5(zp)->v_type == VREG &&
	    !(zp->z_pflags & ZFS_AV_QUARANTINED) && zp->z_size > 0)
		FUNC0(FUNC10(vp, cr, 1) == 0);

	FUNC3(zfsvfs);
	return (0);
}