#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int z_mode; int /*<<< orphan*/  z_uid; TYPE_2__* z_zfsvfs; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_11__ {scalar_t__ z_replay; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  cred_t ;
struct TYPE_12__ {scalar_t__ v_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_WRITE_DATA ; 
 int /*<<< orphan*/  B_FALSE ; 
 int S_ISVTX ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  ZFS_OWNER ; 
 TYPE_7__* FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC5(znode_t *zdp, znode_t *zp, cred_t *cr)
{
	uid_t  		uid;
	uid_t		downer;
	uid_t		fowner;
	zfsvfs_t	*zfsvfs = zdp->z_zfsvfs;

	if (zdp->z_zfsvfs->z_replay)
		return (0);

	if ((zdp->z_mode & S_ISVTX) == 0)
		return (0);

	downer = FUNC3(zfsvfs, zdp->z_uid, cr, ZFS_OWNER);
	fowner = FUNC3(zfsvfs, zp->z_uid, cr, ZFS_OWNER);

	if ((uid = FUNC1(cr)) == downer || uid == fowner ||
	    (FUNC0(zp)->v_type == VREG &&
	    FUNC4(zp, ACE_WRITE_DATA, 0, B_FALSE, cr) == 0))
		return (0);
	else
		return (FUNC2(FUNC0(zp), cr));
}