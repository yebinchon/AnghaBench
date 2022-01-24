#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct renameflags {int nounmount; } ;
struct TYPE_6__ {int /*<<< orphan*/  lzh; } ;
typedef  TYPE_1__ libbe_handle_t ;

/* Variables and functions */
 int BE_ERR_EXISTS ; 
 int BE_ERR_NOENT ; 
 int BE_ERR_UNKNOWN ; 
 int BE_ERR_ZFSOPEN ; 
 int BE_MAXPATHLEN ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int FUNC0 (TYPE_1__*,char const*,char*) ; 
 int FUNC1 (TYPE_1__*,char const*) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,struct renameflags) ; 

int
FUNC7(libbe_handle_t *lbh, const char *old, const char *new)
{
	char full_old[BE_MAXPATHLEN];
	char full_new[BE_MAXPATHLEN];
	zfs_handle_t *zfs_hdl;
	int err;

	/*
	 * be_validate_name is documented not to set error state, so we should
	 * do so here.
	 */
	if ((err = FUNC1(lbh, new)) != 0)
		return (FUNC2(lbh, err));
	if ((err = FUNC0(lbh, old, full_old)) != 0)
		return (FUNC2(lbh, err));
	if ((err = FUNC0(lbh, new, full_new)) != 0)
		return (FUNC2(lbh, err));

	if (!FUNC4(lbh->lzh, full_old, ZFS_TYPE_DATASET))
		return (FUNC2(lbh, BE_ERR_NOENT));

	if (FUNC4(lbh->lzh, full_new, ZFS_TYPE_DATASET))
		return (FUNC2(lbh, BE_ERR_EXISTS));

	if ((zfs_hdl = FUNC5(lbh->lzh, full_old,
	    ZFS_TYPE_FILESYSTEM)) == NULL)
		return (FUNC2(lbh, BE_ERR_ZFSOPEN));

	/* recurse, nounmount, forceunmount */
	struct renameflags flags = {
		.nounmount = 1,
	};

	err = FUNC6(zfs_hdl, NULL, full_new, flags);

	FUNC3(zfs_hdl);
	if (err != 0)
		return (FUNC2(lbh, BE_ERR_UNKNOWN));
	return (0);
}