#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int z_pflags; } ;
typedef  TYPE_1__ znode_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int ACE_DELETE ; 
 int ACE_DELETE_CHILD ; 
 int ACE_EXECUTE ; 
 int ACE_WRITE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int EACCES ; 
 int /*<<< orphan*/  EPERM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VEXEC ; 
 int /*<<< orphan*/  VWRITE ; 
 int ZFS_IMMUTABLE ; 
 int ZFS_NOUNLINK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC6(znode_t *dzp, znode_t *zp, cred_t *cr)
{
	uint32_t dzp_working_mode = 0;
	uint32_t zp_working_mode = 0;
	int dzp_error, zp_error;
	mode_t available_perms;
	boolean_t dzpcheck_privs = B_TRUE;
	boolean_t zpcheck_privs = B_TRUE;

	/*
	 * We want specific DELETE permissions to
	 * take precedence over WRITE/EXECUTE.  We don't
	 * want an ACL such as this to mess us up.
	 * user:joe:write_data:deny,user:joe:delete:allow
	 *
	 * However, deny permissions may ultimately be overridden
	 * by secpolicy_vnode_access().
	 *
	 * We will ask for all of the necessary permissions and then
	 * look at the working modes from the directory and target object
	 * to determine what was found.
	 */

	if (zp->z_pflags & (ZFS_IMMUTABLE | ZFS_NOUNLINK))
		return (FUNC1(EPERM));

	/*
	 * First row
	 * If the directory permissions allow the delete, we are done.
	 */
	if ((dzp_error = FUNC5(dzp, ACE_DELETE_CHILD,
	    &dzp_working_mode, &dzpcheck_privs, B_FALSE, cr)) == 0)
		return (0);

	/*
	 * If target object has delete permission then we are done
	 */
	if ((zp_error = FUNC5(zp, ACE_DELETE, &zp_working_mode,
	    &zpcheck_privs, B_FALSE, cr)) == 0)
		return (0);

	FUNC0(dzp_error && zp_error);

	if (!dzpcheck_privs)
		return (dzp_error);
	if (!zpcheck_privs)
		return (zp_error);

	/*
	 * Second row
	 *
	 * If directory returns EACCES then delete_child was denied
	 * due to deny delete_child.  In this case send the request through
	 * secpolicy_vnode_remove().  We don't use zfs_delete_final_check()
	 * since that *could* allow the delete based on write/execute permission
	 * and we want delete permissions to override write/execute.
	 */

	if (dzp_error == EACCES)
		return (FUNC3(FUNC2(dzp), cr));	/* XXXPJD: s/dzp/zp/ ? */

	/*
	 * Third Row
	 * only need to see if we have write/execute on directory.
	 */

	dzp_error = FUNC5(dzp, ACE_EXECUTE|ACE_WRITE_DATA,
	    &dzp_working_mode, &dzpcheck_privs, B_FALSE, cr);

	if (dzp_error != 0 && !dzpcheck_privs)
		return (dzp_error);

	/*
	 * Fourth row
	 */

	available_perms = (dzp_working_mode & ACE_WRITE_DATA) ? 0 : VWRITE;
	available_perms |= (dzp_working_mode & ACE_EXECUTE) ? 0 : VEXEC;

	return (FUNC4(zp, dzp, available_perms, cr));

}