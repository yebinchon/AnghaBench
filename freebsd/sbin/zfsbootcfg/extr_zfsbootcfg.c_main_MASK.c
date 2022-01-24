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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  KENV_GET ; 
 int MAX_COMMAND_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 (char const* const) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,char const* const) ; 

int FUNC9(int argc, const char * const *argv)
{
	char buf[32];
	libzfs_handle_t *hdl;
	uint64_t pool_guid;
	uint64_t vdev_guid;
	int zfs_fd;
	int len;

	if (argc != 2) {
		FUNC0(stderr, "usage: zfsbootcfg <boot.config(5) options>\n");
		return (1);
	}

	len = FUNC6(argv[1]);
	if (len >= MAX_COMMAND_LEN) {
		FUNC0(stderr, "options string is too long\n");
		return (1);
	}

	if (FUNC1(KENV_GET, "vfs.zfs.boot.primary_pool", buf, sizeof(buf)) <= 0) {
		FUNC4("can't get vfs.zfs.boot.primary_pool");
		return (1);
	}
	pool_guid = FUNC7(buf, NULL, 10);
	if (pool_guid == 0) {
		FUNC4("can't parse vfs.zfs.boot.primary_pool");
		return (1);
	}

	if (FUNC1(KENV_GET, "vfs.zfs.boot.primary_vdev", buf, sizeof(buf)) <= 0) {
		FUNC4("can't get vfs.zfs.boot.primary_vdev");
		return (1);
	}
	vdev_guid = FUNC7(buf, NULL, 10);
	if (vdev_guid == 0) {
		FUNC4("can't parse vfs.zfs.boot.primary_vdev");
		return (1);
	}

	if ((hdl = FUNC3()) == NULL) {
		(void) FUNC0(stderr, "internal error: failed to "
		    "initialize ZFS library\n");
		return (1);
	}

	if (FUNC8(hdl, pool_guid, vdev_guid, argv[1]) != 0) {
		FUNC4("ZFS_IOC_NEXTBOOT failed");
		FUNC2(hdl);
		return (1);
	}

	FUNC2(hdl);
	FUNC5("zfs next boot options are successfully written\n");
	return (0);
}