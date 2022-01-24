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
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct be_mount_info {int /*<<< orphan*/  lbh; int /*<<< orphan*/  mntflags; int /*<<< orphan*/  depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_ERR_BADPATH ; 
 int /*<<< orphan*/  BE_ERR_PATHBUSY ; 
 int /*<<< orphan*/  BE_ERR_PATHLEN ; 
 int /*<<< orphan*/  BE_ERR_PERMS ; 
 int /*<<< orphan*/  BE_ERR_UNKNOWN ; 
#define  EBUSY 133 
#define  ELOOP 132 
#define  ENAMETOOLONG 131 
#define  ENOENT 130 
#define  ENOTDIR 129 
#define  EPERM 128 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char**) ; 
 int FUNC3 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,void*),struct be_mount_info*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(zfs_handle_t *zfs_hdl, void *data)
{

	int err;
	char *mountpoint;
	struct be_mount_info *info;

	info = (struct be_mount_info *)data;

	++info->depth;
	if((err = FUNC3(zfs_hdl, be_umount_iter, info)) != 0) {
		return (err);
	}
	--info->depth;

	if (!FUNC2(zfs_hdl, &mountpoint)) {
		return (0);
	}
	FUNC0(mountpoint);

	if (FUNC4(zfs_hdl, NULL, info->mntflags) != 0) {
		switch (errno) {
		case ENAMETOOLONG:
			return (FUNC1(info->lbh, BE_ERR_PATHLEN));
		case ELOOP:
		case ENOENT:
		case ENOTDIR:
			return (FUNC1(info->lbh, BE_ERR_BADPATH));
		case EPERM:
			return (FUNC1(info->lbh, BE_ERR_PERMS));
		case EBUSY:
			return (FUNC1(info->lbh, BE_ERR_PATHBUSY));
		default:
			return (FUNC1(info->lbh, BE_ERR_UNKNOWN));
		}
	}
	return (0);
}