#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mount {int vfs_flag; } ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  MNTOPT_NOSETUID ; 
 int /*<<< orphan*/  MNTOPT_SETUID ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int MNT_USER ; 
 int /*<<< orphan*/  PRIV_VFS_MOUNT_NONUSER ; 
 int VFS_NOSETUID ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC5(cred_t *cr, struct mount *vfsp)
{

	if (FUNC2(cr, PRIV_VFS_MOUNT_NONUSER) != 0) {
		FUNC0(vfsp);
		vfsp->vfs_flag |= VFS_NOSETUID | MNT_USER;
		FUNC3(vfsp, MNTOPT_SETUID);
		FUNC4(vfsp, MNTOPT_NOSETUID, NULL, 0);
		FUNC1(vfsp);
	}
}