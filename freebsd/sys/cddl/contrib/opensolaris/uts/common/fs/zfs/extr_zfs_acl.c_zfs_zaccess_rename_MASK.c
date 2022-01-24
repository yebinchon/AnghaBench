#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int z_pflags; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  cred_t ;
struct TYPE_12__ {scalar_t__ v_type; } ;

/* Variables and functions */
 int ACE_ADD_FILE ; 
 int ACE_ADD_SUBDIRECTORY ; 
 int ACE_WRITE_DATA ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  EACCES ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ VDIR ; 
 int ZFS_AV_QUARANTINED ; 
 TYPE_9__* FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC4(znode_t *sdzp, znode_t *szp, znode_t *tdzp,
    znode_t *tzp, cred_t *cr)
{
	int add_perm;
	int error;

	if (szp->z_pflags & ZFS_AV_QUARANTINED)
		return (FUNC0(EACCES));

	add_perm = (FUNC1(szp)->v_type == VDIR) ?
	    ACE_ADD_SUBDIRECTORY : ACE_ADD_FILE;

	/*
	 * Rename permissions are combination of delete permission +
	 * add file/subdir permission.
	 *
	 * BSD operating systems also require write permission
	 * on the directory being moved from one parent directory
	 * to another.
	 */
	if (FUNC1(szp)->v_type == VDIR && FUNC1(sdzp) != FUNC1(tdzp)) {
		if ((error = FUNC2(szp, ACE_WRITE_DATA, 0, B_FALSE, cr)))
			return (error);
	}

	/*
	 * first make sure we do the delete portion.
	 *
	 * If that succeeds then check for add_file/add_subdir permissions
	 */

	if ((error = FUNC3(sdzp, szp, cr)))
		return (error);

	/*
	 * If we have a tzp, see if we can delete it?
	 */
	if (tzp) {
		if ((error = FUNC3(tdzp, tzp, cr)))
			return (error);
	}

	/*
	 * Now check for add permissions
	 */
	error = FUNC2(tdzp, add_perm, 0, B_FALSE, cr);

	return (error);
}