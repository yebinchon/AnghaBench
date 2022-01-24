#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* z_vfs; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  vfs_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  MNTOPT_RO ; 
 int /*<<< orphan*/  MNTOPT_RW ; 
 int /*<<< orphan*/  VFS_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg, uint64_t newval)
{
	zfsvfs_t *zfsvfs = arg;

	if (newval) {
		/* XXX locking on vfs_flag? */
		zfsvfs->z_vfs->vfs_flag |= VFS_RDONLY;
		FUNC0(zfsvfs->z_vfs, MNTOPT_RW);
		FUNC1(zfsvfs->z_vfs, MNTOPT_RO, NULL, 0);
	} else {
		/* XXX locking on vfs_flag? */
		zfsvfs->z_vfs->vfs_flag &= ~VFS_RDONLY;
		FUNC0(zfsvfs->z_vfs, MNTOPT_RO);
		FUNC1(zfsvfs->z_vfs, MNTOPT_RW, NULL, 0);
	}
}