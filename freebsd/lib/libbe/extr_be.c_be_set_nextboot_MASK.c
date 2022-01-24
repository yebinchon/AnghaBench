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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_3__ {int /*<<< orphan*/  lzh; } ;
typedef  TYPE_1__ libbe_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC4(libbe_handle_t *lbh, nvlist_t *config, uint64_t pool_guid,
    const char *zfsdev)
{
	nvlist_t **child;
	uint64_t vdev_guid;
	int c, children;

	if (FUNC0(config, ZPOOL_CONFIG_CHILDREN, &child,
	    &children) == 0) {
		for (c = 0; c < children; ++c)
			if (FUNC4(lbh, child[c], pool_guid, zfsdev) != 0)
				return (1);
		return (0);
	}

	if (FUNC1(config, ZPOOL_CONFIG_GUID,
	    &vdev_guid) != 0) {
		return (1);
	}

	if (FUNC3(lbh->lzh, pool_guid, vdev_guid, zfsdev) != 0) {
		FUNC2("ZFS_IOC_NEXTBOOT failed");
		return (1);
	}

	return (0);
}