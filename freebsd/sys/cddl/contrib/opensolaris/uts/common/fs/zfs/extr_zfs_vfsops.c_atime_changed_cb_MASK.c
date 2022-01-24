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
struct TYPE_4__ {TYPE_2__* z_vfs; scalar_t__ z_atime; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  vfs_flag; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  MNTOPT_ATIME ; 
 int /*<<< orphan*/  MNTOPT_NOATIME ; 
 int /*<<< orphan*/  MNT_NOATIME ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg, uint64_t newval)
{
	zfsvfs_t *zfsvfs = arg;

	if (newval == TRUE) {
		zfsvfs->z_atime = TRUE;
		zfsvfs->z_vfs->vfs_flag &= ~MNT_NOATIME;
		FUNC0(zfsvfs->z_vfs, MNTOPT_NOATIME);
		FUNC1(zfsvfs->z_vfs, MNTOPT_ATIME, NULL, 0);
	} else {
		zfsvfs->z_atime = FALSE;
		zfsvfs->z_vfs->vfs_flag |= MNT_NOATIME;
		FUNC0(zfsvfs->z_vfs, MNTOPT_ATIME);
		FUNC1(zfsvfs->z_vfs, MNTOPT_NOATIME, NULL, 0);
	}
}