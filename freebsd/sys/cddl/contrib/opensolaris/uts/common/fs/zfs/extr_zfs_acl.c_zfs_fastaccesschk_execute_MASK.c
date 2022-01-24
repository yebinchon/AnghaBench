#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int z_pflags; scalar_t__ z_uid; scalar_t__ z_gid; int z_mode; int /*<<< orphan*/  z_zfsvfs; int /*<<< orphan*/  z_acl_lock; } ;
typedef  TYPE_1__ znode_t ;
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int boolean_t ;
struct TYPE_7__ {scalar_t__ v_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_EXECUTE ; 
 int B_FALSE ; 
 int B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EACCES ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 int S_IXUSR ; 
 scalar_t__ VDIR ; 
 int ZFS_AV_QUARANTINED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int ZFS_NO_EXECS_DENIED ; 
 int ZFS_XATTR ; 
 TYPE_4__* FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs__fastpath__execute__access__miss ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

int
FUNC11(znode_t *zdp, cred_t *cr)
{
	boolean_t owner = B_FALSE;
	boolean_t groupmbr = B_FALSE;
	boolean_t is_attr;
	uid_t uid = FUNC6(cr);
	int error;

	if (zdp->z_pflags & ZFS_AV_QUARANTINED)
		return (FUNC2(EACCES));

	is_attr = ((zdp->z_pflags & ZFS_XATTR) &&
	    (FUNC5(zdp)->v_type == VDIR));
	if (is_attr)
		goto slow;


	FUNC8(&zdp->z_acl_lock);

	if (zdp->z_pflags & ZFS_NO_EXECS_DENIED) {
		FUNC9(&zdp->z_acl_lock);
		return (0);
	}

	if (FUNC1(zdp->z_uid) != 0 || FUNC1(zdp->z_gid) != 0) {
		FUNC9(&zdp->z_acl_lock);
		goto slow;
	}

	if (uid == zdp->z_uid) {
		owner = B_TRUE;
		if (zdp->z_mode & S_IXUSR) {
			FUNC9(&zdp->z_acl_lock);
			return (0);
		} else {
			FUNC9(&zdp->z_acl_lock);
			goto slow;
		}
	}
	if (FUNC7(zdp->z_gid, cr)) {
		groupmbr = B_TRUE;
		if (zdp->z_mode & S_IXGRP) {
			FUNC9(&zdp->z_acl_lock);
			return (0);
		} else {
			FUNC9(&zdp->z_acl_lock);
			goto slow;
		}
	}
	if (!owner && !groupmbr) {
		if (zdp->z_mode & S_IXOTH) {
			FUNC9(&zdp->z_acl_lock);
			return (0);
		}
	}

	FUNC9(&zdp->z_acl_lock);

slow:
	FUNC0(zfs__fastpath__execute__access__miss);
	FUNC3(zdp->z_zfsvfs);
	error = FUNC10(zdp, ACE_EXECUTE, 0, B_FALSE, cr);
	FUNC4(zdp->z_zfsvfs);
	return (error);
}