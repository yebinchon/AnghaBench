#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct be_mount_info {char* be; scalar_t__ depth; int /*<<< orphan*/  mntflags; int /*<<< orphan*/ * mountpoint; TYPE_1__* lbh; } ;
struct TYPE_5__ {int /*<<< orphan*/  lzh; } ;
typedef  TYPE_1__ libbe_handle_t ;

/* Variables and functions */
 int BE_ERR_SUCCESS ; 
 int BE_ERR_ZFSOPEN ; 
 int BE_MAXPATHLEN ; 
 int BE_MNT_FORCE ; 
 int /*<<< orphan*/  MS_FORCE ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int FUNC0 (TYPE_1__*,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct be_mount_info*) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC5(libbe_handle_t *lbh, char *bootenv, int flags)
{
	int err;
	char be[BE_MAXPATHLEN];
	zfs_handle_t *root_hdl;
	struct be_mount_info info;

	if ((err = FUNC0(lbh, bootenv, be)) != 0)
		return (FUNC2(lbh, err));

	if ((root_hdl = FUNC4(lbh->lzh, be, ZFS_TYPE_FILESYSTEM)) == NULL)
		return (FUNC2(lbh, BE_ERR_ZFSOPEN));

	info.lbh = lbh;
	info.be = be;
	info.mountpoint = NULL;
	info.mntflags = (flags & BE_MNT_FORCE) ? MS_FORCE : 0;
	info.depth = 0;

	if ((err = FUNC1(root_hdl, &info)) != 0) {
		FUNC3(root_hdl);
		return (err);
	}

	FUNC3(root_hdl);
	return (BE_ERR_SUCCESS);
}