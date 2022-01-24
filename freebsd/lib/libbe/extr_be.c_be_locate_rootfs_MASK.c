#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct statfs {int dummy; } ;
struct extmnttab {int /*<<< orphan*/  mnt_fstype; } ;
struct TYPE_3__ {int /*<<< orphan*/  rootfs; int /*<<< orphan*/  lzh; } ;
typedef  TYPE_1__ libbe_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  MNTTYPE_ZFS ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 scalar_t__ FUNC0 (char*,struct statfs*) ; 
 int /*<<< orphan*/  FUNC1 (struct statfs*,struct extmnttab*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(libbe_handle_t *lbh)
{
	struct statfs sfs;
	struct extmnttab entry;
	zfs_handle_t *zfs;

	/*
	 * Check first if root is ZFS; if not, we'll bail on rootfs capture.
	 * Unfortunately needed because zfs_path_to_zhandle will emit to
	 * stderr if / isn't actually a ZFS filesystem, which we'd like
	 * to avoid.
	 */
	if (FUNC0("/", &sfs) == 0) {
		FUNC1(&sfs, &entry);
		if (FUNC2(entry.mnt_fstype, MNTTYPE_ZFS) != 0)
			return (1);
	} else
		return (1);
	zfs = FUNC6(lbh->lzh, "/", ZFS_TYPE_FILESYSTEM);
	if (zfs == NULL)
		return (1);

	FUNC3(lbh->rootfs, FUNC5(zfs), sizeof(lbh->rootfs));
	FUNC4(zfs);
	return (0);
}