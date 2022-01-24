#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct libbe_deep_clone {char* snapname; int depth_limit; int depth; TYPE_1__* lbh; } ;
struct libbe_dccb {int /*<<< orphan*/ * props; int /*<<< orphan*/ * zhp; TYPE_1__* lbh; } ;
typedef  int /*<<< orphan*/  snap_path ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  be_path ;
struct TYPE_2__ {int /*<<< orphan*/  lzh; } ;

/* Variables and functions */
 int BE_ERR_EXISTS ; 
 scalar_t__ BE_ERR_SUCCESS ; 
 int BE_ERR_UNKNOWN ; 
 int BE_ERR_ZFSCLONE ; 
 int BE_ERR_ZFSOPEN ; 
 int BE_MAXPATHLEN ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  ZFS_TYPE_SNAPSHOT ; 
 scalar_t__ ZPROP_INVAL ; 
 int /*<<< orphan*/  be_deep_clone_prop ; 
 scalar_t__ FUNC0 (struct libbe_deep_clone*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,void*),struct libbe_deep_clone*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct libbe_dccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(zfs_handle_t *ds, void *data)
{
	int err;
	char be_path[BE_MAXPATHLEN];
	char snap_path[BE_MAXPATHLEN];
	const char *dspath;
	zfs_handle_t *snap_hdl;
	nvlist_t *props;
	struct libbe_deep_clone *ldc;
	struct libbe_dccb dccb;

	ldc = (struct libbe_deep_clone *)data;
	dspath = FUNC9(ds);

	FUNC5(snap_path, sizeof(snap_path), "%s@%s", dspath, ldc->snapname);

	/* construct the boot environment path from the dataset we're cloning */
	if (FUNC0(ldc, dspath, be_path, sizeof(be_path)) != BE_ERR_SUCCESS)
		return (FUNC4(ldc->lbh, BE_ERR_UNKNOWN));

	/* the dataset to be created (i.e. the boot environment) already exists */
	if (FUNC8(ldc->lbh->lzh, be_path, ZFS_TYPE_DATASET))
		return (FUNC4(ldc->lbh, BE_ERR_EXISTS));

	/* no snapshot found for this dataset, silently skip it */
	if (!FUNC8(ldc->lbh->lzh, snap_path, ZFS_TYPE_SNAPSHOT))
		return (0);

	if ((snap_hdl =
	    FUNC11(ldc->lbh->lzh, snap_path, ZFS_TYPE_SNAPSHOT)) == NULL)
		return (FUNC4(ldc->lbh, BE_ERR_ZFSOPEN));

	FUNC2(&props, NV_UNIQUE_NAME, KM_SLEEP);
	FUNC1(props, "canmount", "noauto");

	dccb.lbh = ldc->lbh;
	dccb.zhp = ds;
	dccb.props = props;
	if (FUNC12(be_deep_clone_prop, &dccb, B_FALSE, B_FALSE,
	    ZFS_TYPE_FILESYSTEM) == ZPROP_INVAL)
		return (-1);

	if ((err = FUNC6(snap_hdl, be_path, props)) != 0)
		return (FUNC4(ldc->lbh, BE_ERR_ZFSCLONE));

	FUNC3(props);
	FUNC7(snap_hdl);

	if (ldc->depth_limit == -1 || ldc->depth < ldc->depth_limit) {
		ldc->depth++;
		err = FUNC10(ds, be_clone_cb, ldc);
		ldc->depth--;
	}

	return (FUNC4(ldc->lbh, err));
}