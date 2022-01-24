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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_ID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_NAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_TXG ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_TOP_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ***,scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC6 (char*,char const*) ; 

__attribute__((used)) static void
FUNC7(nvlist_t ***configs, uint64_t *count, nvlist_t *cfg,
    const char *name, uint64_t* known_pool_guid)
{
	nvlist_t *vdev_tree;
	uint64_t pool_guid;
	uint64_t vdev_guid, known_guid;
	uint64_t id, txg, known_txg;
	char *pname;
	int i;

	if (FUNC3(cfg, ZPOOL_CONFIG_POOL_NAME, &pname) != 0 ||
	    FUNC6(pname, name) != 0)
		goto ignore;

	if (FUNC4(cfg, ZPOOL_CONFIG_POOL_GUID, &pool_guid) != 0)
		goto ignore;

	if (FUNC4(cfg, ZPOOL_CONFIG_TOP_GUID, &vdev_guid) != 0)
		goto ignore;

	if (FUNC2(cfg, ZPOOL_CONFIG_VDEV_TREE, &vdev_tree) != 0)
		goto ignore;

	if (FUNC4(vdev_tree, ZPOOL_CONFIG_ID, &id) != 0)
		goto ignore;

	FUNC0(FUNC4(cfg, ZPOOL_CONFIG_POOL_TXG, &txg) == 0);

	if (*known_pool_guid != 0) {
		if (pool_guid != *known_pool_guid)
			goto ignore;
	} else
		*known_pool_guid = pool_guid;

	FUNC5(configs, count, id);

	if ((*configs)[id] != NULL) {
		FUNC0(FUNC4((*configs)[id],
		    ZPOOL_CONFIG_POOL_TXG, &known_txg) == 0);
		if (txg <= known_txg)
			goto ignore;
		FUNC1((*configs)[id]);
	}

	(*configs)[id] = cfg;
	return;

ignore:
	FUNC1(cfg);
}