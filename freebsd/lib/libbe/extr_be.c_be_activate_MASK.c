#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_9__ {int /*<<< orphan*/  lzh; int /*<<< orphan*/  active_phandle; int /*<<< orphan*/  bootfs; } ;
typedef  TYPE_1__ libbe_handle_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BE_ERR_NOPOOL ; 
 int BE_ERR_SUCCESS ; 
 int BE_ERR_UNKNOWN ; 
 int BE_MAXPATHLEN ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*,char*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,char**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,char*,char*) ; 

int
FUNC17(libbe_handle_t *lbh, const char *bootenv, bool temporary)
{
	char be_path[BE_MAXPATHLEN];
	char buf[BE_MAXPATHLEN];
	nvlist_t *config, *dsprops, *vdevs;
	char *origin;
	uint64_t pool_guid;
	zfs_handle_t *zhp;
	int err;

	FUNC4(lbh, bootenv, be_path);

	/* Note: be_exists fails if mountpoint is not / */
	if ((err = FUNC1(lbh, be_path)) != 0)
		return (FUNC10(lbh, err));

	if (temporary) {
		config = FUNC15(lbh->active_phandle, NULL);
		if (config == NULL)
			/* config should be fetchable... */
			return (FUNC10(lbh, BE_ERR_UNKNOWN));

		if (FUNC9(config, ZPOOL_CONFIG_POOL_GUID,
		    &pool_guid) != 0)
			/* Similarly, it shouldn't be possible */
			return (FUNC10(lbh, BE_ERR_UNKNOWN));

		/* Expected format according to zfsbootcfg(8) man */
		FUNC11(buf, sizeof(buf), "zfs:%s:", be_path);

		/* We have no config tree */
		if (FUNC7(config, ZPOOL_CONFIG_VDEV_TREE,
		    &vdevs) != 0)
			return (FUNC10(lbh, BE_ERR_NOPOOL));

		return (FUNC5(lbh, vdevs, pool_guid, buf));
	} else {
		if (FUNC0(lbh, lbh->bootfs) != 0)
			return (-1);

		/* Obtain bootenv zpool */
		err = FUNC16(lbh->active_phandle, "bootfs", be_path);
		if (err)
			return (-1);

		zhp = FUNC13(lbh->lzh, be_path, ZFS_TYPE_FILESYSTEM);
		if (zhp == NULL)
			return (-1);

		if (FUNC3(&dsprops) != 0)
			return (-1);

		if (FUNC2(lbh, be_path, dsprops) != 0) {
			FUNC6(dsprops);
			return (-1);
		}

		if (FUNC8(dsprops, "origin", &origin) == 0)
			err = FUNC14(zhp);
		FUNC6(dsprops);

		FUNC12(zhp);

		if (err)
			return (-1);
	}

	return (BE_ERR_SUCCESS);
}