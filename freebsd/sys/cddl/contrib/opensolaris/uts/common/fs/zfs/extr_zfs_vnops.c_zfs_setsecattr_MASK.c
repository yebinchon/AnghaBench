#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* z_zfsvfs; } ;
typedef  TYPE_2__ znode_t ;
typedef  int /*<<< orphan*/  zilog_t ;
struct TYPE_11__ {TYPE_1__* z_os; int /*<<< orphan*/ * z_log; } ;
typedef  TYPE_3__ zfsvfs_t ;
typedef  int /*<<< orphan*/  vsecattr_t ;
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int /*<<< orphan*/  caller_context_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_9__ {scalar_t__ os_sync; } ;

/* Variables and functions */
 int ATTR_NOACLCHECK ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ ZFS_SYNC_ALWAYS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC6(vnode_t *vp, vsecattr_t *vsecp, int flag, cred_t *cr,
    caller_context_t *ct)
{
	znode_t *zp = FUNC0(vp);
	zfsvfs_t *zfsvfs = zp->z_zfsvfs;
	int error;
	boolean_t skipaclchk = (flag & ATTR_NOACLCHECK) ? B_TRUE : B_FALSE;
	zilog_t	*zilog = zfsvfs->z_log;

	FUNC1(zfsvfs);
	FUNC3(zp);

	error = FUNC4(zp, vsecp, skipaclchk, cr);

	if (zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
		FUNC5(zilog, 0);

	FUNC2(zfsvfs);
	return (error);
}