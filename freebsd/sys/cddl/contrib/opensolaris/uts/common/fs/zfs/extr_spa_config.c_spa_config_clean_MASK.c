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
typedef  size_t uint_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_TYPE_UINT64_ARRAY ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SCAN_STATS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_STATS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(nvlist_t *nvl)
{
	nvlist_t **child;
	nvlist_t *nvroot = NULL;
	uint_t c, children;

	if (FUNC1(nvl, ZPOOL_CONFIG_CHILDREN, &child,
	    &children) == 0) {
		for (c = 0; c < children; c++)
			FUNC3(child[c]);
	}

	if (FUNC0(nvl, ZPOOL_CONFIG_VDEV_TREE, &nvroot) == 0)
		FUNC3(nvroot);

	FUNC2(nvl, ZPOOL_CONFIG_VDEV_STATS, DATA_TYPE_UINT64_ARRAY);
	FUNC2(nvl, ZPOOL_CONFIG_SCAN_STATS, DATA_TYPE_UINT64_ARRAY);
}