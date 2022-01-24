#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {unsigned long long vdev_guid; struct TYPE_20__* vdev_top; scalar_t__ vdev_islog; scalar_t__ vdev_isspare; } ;
typedef  TYPE_1__ vdev_t ;
typedef  unsigned long long uint64_t ;
struct TYPE_21__ {unsigned long long spa_config_txg; int spa_import_flags; char* spa_comment; int /*<<< orphan*/ * spa_label_features; int /*<<< orphan*/ * spa_config_splitting; int /*<<< orphan*/  spa_config; TYPE_1__* spa_root_vdev; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  ddt_stat_t ;
typedef  int /*<<< orphan*/  ddt_object_t ;
typedef  int /*<<< orphan*/  ddt_histogram_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_22__ {char* nodename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  RW_READER ; 
 int SCL_CONFIG ; 
 int SCL_STATE ; 
 scalar_t__ SPA_LOAD_NONE ; 
 int VDEV_CONFIG_MOS ; 
 int ZFS_IMPORT_TEMP_NAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_COMMENT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_DDT_HISTOGRAM ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_DDT_OBJ_STATS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_DDT_STATS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_FEATURES_FOR_READ ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_HOSTID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_HOSTNAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_IS_LOG ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_IS_SPARE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_NAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_STATE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_TXG ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SPLIT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SPLIT_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_TOP_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VERSION ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long long*,int) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC18 (TYPE_2__*) ; 
 scalar_t__ FUNC19 (TYPE_2__*) ; 
 char* FUNC20 (TYPE_2__*) ; 
 unsigned long long FUNC21 (TYPE_2__*) ; 
 unsigned long long FUNC22 (TYPE_2__*) ; 
 TYPE_6__ utsname ; 
 int /*<<< orphan*/ * FUNC23 (TYPE_2__*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 unsigned long FUNC25 (int /*<<< orphan*/ *) ; 

nvlist_t *
FUNC26(spa_t *spa, vdev_t *vd, uint64_t txg, int getstats)
{
	nvlist_t *config, *nvroot;
	vdev_t *rvd = spa->spa_root_vdev;
	unsigned long hostid = 0;
	boolean_t locked = B_FALSE;
	uint64_t split_guid;
	char *pool_name;

	if (vd == NULL) {
		vd = rvd;
		locked = B_TRUE;
		FUNC15(spa, SCL_CONFIG | SCL_STATE, FTAG, RW_READER);
	}

	FUNC0(FUNC17(spa, SCL_CONFIG | SCL_STATE, RW_READER) ==
	    (SCL_CONFIG | SCL_STATE));

	/*
	 * If txg is -1, report the current value of spa->spa_config_txg.
	 */
	if (txg == -1ULL)
		txg = spa->spa_config_txg;

	/*
	 * Originally, users had to handle spa namespace collisions by either
	 * exporting the already imported pool or by specifying a new name for
	 * the pool with a conflicting name. In the case of root pools from
	 * virtual guests, neither approach to collision resolution is
	 * reasonable. This is addressed by extending the new name syntax with
	 * an option to specify that the new name is temporary. When specified,
	 * ZFS_IMPORT_TEMP_NAME will be set in spa->spa_import_flags to tell us
	 * to use the previous name, which we do below.
	 */
	if (spa->spa_import_flags & ZFS_IMPORT_TEMP_NAME) {
		pool_name = FUNC10(spa->spa_config,
		    ZPOOL_CONFIG_POOL_NAME);
	} else {
		pool_name = FUNC20(spa);
	}

	config = FUNC9();

	FUNC7(config, ZPOOL_CONFIG_VERSION, FUNC22(spa));
	FUNC6(config, ZPOOL_CONFIG_POOL_NAME, pool_name);
	FUNC7(config, ZPOOL_CONFIG_POOL_STATE, FUNC21(spa));
	FUNC7(config, ZPOOL_CONFIG_POOL_TXG, txg);
	FUNC7(config, ZPOOL_CONFIG_POOL_GUID, FUNC18(spa));
	if (spa->spa_comment != NULL) {
		FUNC6(config, ZPOOL_CONFIG_COMMENT,
		    spa->spa_comment);
	}

	hostid = FUNC25(NULL);

	if (hostid != 0) {
		FUNC7(config, ZPOOL_CONFIG_HOSTID, hostid);
	}
	FUNC6(config, ZPOOL_CONFIG_HOSTNAME, utsname.nodename);

	int config_gen_flags = 0;
	if (vd != rvd) {
		FUNC7(config, ZPOOL_CONFIG_TOP_GUID,
		    vd->vdev_top->vdev_guid);
		FUNC7(config, ZPOOL_CONFIG_GUID,
		    vd->vdev_guid);
		if (vd->vdev_isspare) {
			FUNC7(config,
			    ZPOOL_CONFIG_IS_SPARE, 1ULL);
		}
		if (vd->vdev_islog) {
			FUNC7(config,
			    ZPOOL_CONFIG_IS_LOG, 1ULL);
		}
		vd = vd->vdev_top;		/* label contains top config */
	} else {
		/*
		 * Only add the (potentially large) split information
		 * in the mos config, and not in the vdev labels
		 */
		if (spa->spa_config_splitting != NULL)
			FUNC5(config, ZPOOL_CONFIG_SPLIT,
			    spa->spa_config_splitting);
		FUNC4(config,
		    ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS);

		config_gen_flags |= VDEV_CONFIG_MOS;
	}

	/*
	 * Add the top-level config.  We even add this on pools which
	 * don't support holes in the namespace.
	 */
	FUNC24(spa, config);

	/*
	 * If we're splitting, record the original pool's guid.
	 */
	if (spa->spa_config_splitting != NULL &&
	    FUNC14(spa->spa_config_splitting,
	    ZPOOL_CONFIG_SPLIT_GUID, &split_guid) == 0) {
		FUNC7(config, ZPOOL_CONFIG_SPLIT_GUID,
		    split_guid);
	}

	nvroot = FUNC23(spa, vd, getstats, config_gen_flags);
	FUNC5(config, ZPOOL_CONFIG_VDEV_TREE, nvroot);
	FUNC13(nvroot);

	/*
	 * Store what's necessary for reading the MOS in the label.
	 */
	FUNC5(config, ZPOOL_CONFIG_FEATURES_FOR_READ,
	    spa->spa_label_features);

	if (getstats && FUNC19(spa) == SPA_LOAD_NONE) {
		ddt_histogram_t *ddh;
		ddt_stat_t *dds;
		ddt_object_t *ddo;

		ddh = FUNC12(sizeof (ddt_histogram_t), KM_SLEEP);
		FUNC1(spa, ddh);
		FUNC8(config,
		    ZPOOL_CONFIG_DDT_HISTOGRAM,
		    (uint64_t *)ddh, sizeof (*ddh) / sizeof (uint64_t));
		FUNC11(ddh, sizeof (ddt_histogram_t));

		ddo = FUNC12(sizeof (ddt_object_t), KM_SLEEP);
		FUNC2(spa, ddo);
		FUNC8(config,
		    ZPOOL_CONFIG_DDT_OBJ_STATS,
		    (uint64_t *)ddo, sizeof (*ddo) / sizeof (uint64_t));
		FUNC11(ddo, sizeof (ddt_object_t));

		dds = FUNC12(sizeof (ddt_stat_t), KM_SLEEP);
		FUNC3(spa, dds);
		FUNC8(config,
		    ZPOOL_CONFIG_DDT_STATS,
		    (uint64_t *)dds, sizeof (*dds) / sizeof (uint64_t));
		FUNC11(dds, sizeof (ddt_stat_t));
	}

	if (locked)
		FUNC16(spa, SCL_CONFIG | SCL_STATE, FTAG);

	return (config);
}