#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdev_t ;
struct TYPE_13__ {scalar_t__ ub_checkpoint_txg; scalar_t__ ub_txg; scalar_t__ ub_version; } ;
typedef  TYPE_1__ uberblock_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_14__ {int /*<<< orphan*/ * spa_config_splitting; int /*<<< orphan*/  spa_config; int /*<<< orphan*/  spa_load_info; int /*<<< orphan*/ * spa_label_features; TYPE_1__ spa_uberblock; int /*<<< orphan*/ * spa_root_vdev; } ;
typedef  TYPE_2__ spa_t ;
typedef  scalar_t__ spa_import_type_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_ALL ; 
 scalar_t__ SPA_IMPORT_ASSEMBLE ; 
 scalar_t__ SPA_VERSION_FEATURES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  VDEV_AUX_CORRUPT_DATA ; 
 int /*<<< orphan*/  VDEV_AUX_UNSUP_FEAT ; 
 int /*<<< orphan*/  VDEV_AUX_VERSION_NEWER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_FEATURES_FOR_READ ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_UNSUP_FEAT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(spa_t *spa, spa_import_type_t type)
{
	vdev_t *rvd = spa->spa_root_vdev;
	nvlist_t *label;
	uberblock_t *ub = &spa->spa_uberblock;

	/*
	 * If we are opening the checkpointed state of the pool by
	 * rewinding to it, at this point we will have written the
	 * checkpointed uberblock to the vdev labels, so searching
	 * the labels will find the right uberblock.  However, if
	 * we are opening the checkpointed state read-only, we have
	 * not modified the labels. Therefore, we must ignore the
	 * labels and continue using the spa_uberblock that was set
	 * by spa_ld_checkpoint_rewind.
	 *
	 * Note that it would be fine to ignore the labels when
	 * rewinding (opening writeable) as well. However, if we
	 * crash just after writing the labels, we will end up
	 * searching the labels. Doing so in the common case means
	 * that this code path gets exercised normally, rather than
	 * just in the edge case.
	 */
	if (ub->ub_checkpoint_txg != 0 &&
	    FUNC13(spa)) {
		FUNC14(spa, ub);
		return (0);
	}

	/*
	 * Find the best uberblock.
	 */
	FUNC19(rvd, ub, &label);

	/*
	 * If we weren't able to find a single valid uberblock, return failure.
	 */
	if (ub->ub_txg == 0) {
		FUNC7(label);
		FUNC15(spa, "no valid uberblock found");
		return (FUNC18(rvd, VDEV_AUX_CORRUPT_DATA, ENXIO));
	}

	FUNC16(spa, "using uberblock with txg=%llu",
	    (u_longlong_t)ub->ub_txg);

	/*
	 * If the pool has an unsupported version we can't open it.
	 */
	if (!FUNC0(ub->ub_version)) {
		FUNC7(label);
		FUNC15(spa, "version %llu is not supported",
		    (u_longlong_t)ub->ub_version);
		return (FUNC18(rvd, VDEV_AUX_VERSION_NEWER, ENOTSUP));
	}

	if (ub->ub_version >= SPA_VERSION_FEATURES) {
		nvlist_t *features;

		/*
		 * If we weren't able to find what's necessary for reading the
		 * MOS in the label, return failure.
		 */
		if (label == NULL) {
			FUNC15(spa, "label config unavailable");
			return (FUNC18(rvd, VDEV_AUX_CORRUPT_DATA,
			    ENXIO));
		}

		if (FUNC8(label, ZPOOL_CONFIG_FEATURES_FOR_READ,
		    &features) != 0) {
			FUNC7(label);
			FUNC15(spa, "invalid label: '%s' missing",
			    ZPOOL_CONFIG_FEATURES_FOR_READ);
			return (FUNC18(rvd, VDEV_AUX_CORRUPT_DATA,
			    ENXIO));
		}

		/*
		 * Update our in-core representation with the definitive values
		 * from the label.
		 */
		FUNC7(spa->spa_label_features);
		FUNC1(FUNC5(features, &spa->spa_label_features, 0) == 0);
	}

	FUNC7(label);

	/*
	 * Look through entries in the label nvlist's features_for_read. If
	 * there is a feature listed there which we don't understand then we
	 * cannot open a pool.
	 */
	if (ub->ub_version >= SPA_VERSION_FEATURES) {
		nvlist_t *unsup_feat;

		FUNC1(FUNC4(&unsup_feat, NV_UNIQUE_NAME, KM_SLEEP) ==
		    0);

		for (nvpair_t *nvp = FUNC9(spa->spa_label_features,
		    NULL); nvp != NULL;
		    nvp = FUNC9(spa->spa_label_features, nvp)) {
			if (!FUNC20(FUNC10(nvp))) {
				FUNC1(FUNC3(unsup_feat,
				    FUNC10(nvp), "") == 0);
			}
		}

		if (!FUNC6(unsup_feat)) {
			FUNC1(FUNC2(spa->spa_load_info,
			    ZPOOL_CONFIG_UNSUP_FEAT, unsup_feat) == 0);
			FUNC7(unsup_feat);
			FUNC15(spa, "some features are unsupported");
			return (FUNC18(rvd, VDEV_AUX_UNSUP_FEAT,
			    ENOTSUP));
		}

		FUNC7(unsup_feat);
	}

	if (type != SPA_IMPORT_ASSEMBLE && spa->spa_config_splitting) {
		FUNC11(spa, SCL_ALL, FTAG, RW_WRITER);
		FUNC17(spa, spa->spa_config);
		FUNC12(spa, SCL_ALL, FTAG);
		FUNC7(spa->spa_config_splitting);
		spa->spa_config_splitting = NULL;
	}

	/*
	 * Initialize internal SPA structures.
	 */
	FUNC14(spa, ub);

	return (0);
}