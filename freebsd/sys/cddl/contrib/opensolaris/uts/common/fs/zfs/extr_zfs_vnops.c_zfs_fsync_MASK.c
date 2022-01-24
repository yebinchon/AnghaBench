#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  z_id; TYPE_3__* z_zfsvfs; } ;
typedef  TYPE_2__ znode_t ;
struct TYPE_10__ {int /*<<< orphan*/  z_log; TYPE_1__* z_os; } ;
typedef  TYPE_3__ zfsvfs_t ;
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int /*<<< orphan*/  caller_context_t ;
struct TYPE_8__ {scalar_t__ os_sync; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ ZFS_SYNC_DISABLED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ zfs_fsync_sync_cnt ; 
 int /*<<< orphan*/  zfs_fsyncer_key ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(vnode_t *vp, int syncflag, cred_t *cr, caller_context_t *ct)
{
	znode_t	*zp = FUNC0(vp);
	zfsvfs_t *zfsvfs = zp->z_zfsvfs;

	(void) FUNC4(zfs_fsyncer_key, (void *)zfs_fsync_sync_cnt);

	if (zfsvfs->z_os->os_sync != ZFS_SYNC_DISABLED) {
		FUNC1(zfsvfs);
		FUNC3(zp);
		FUNC5(zfsvfs->z_log, zp->z_id);
		FUNC2(zfsvfs);
	}
	return (0);
}