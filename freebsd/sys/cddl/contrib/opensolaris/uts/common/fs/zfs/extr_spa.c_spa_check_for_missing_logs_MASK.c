#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int vdev_children; scalar_t__ vdev_state; scalar_t__ vdev_islog; struct TYPE_10__** vdev_child; } ;
typedef  TYPE_1__ vdev_t ;
typedef  size_t uint64_t ;
struct TYPE_11__ {int spa_import_flags; int /*<<< orphan*/  spa_load_info; TYPE_1__* spa_root_vdev; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_LOG_CLEAR ; 
 int /*<<< orphan*/  VDEV_CONFIG_MISSING ; 
 scalar_t__ VDEV_STATE_CANT_OPEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ZFS_IMPORT_MISSING_LOG ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MISSING_DEVICES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t) ; 
 int /*<<< orphan*/ ** FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC13(spa_t *spa)
{
	vdev_t *rvd = spa->spa_root_vdev;

	/*
	 * If we're doing a normal import, then build up any additional
	 * diagnostic information about missing log devices.
	 * We'll pass this up to the user for further processing.
	 */
	if (!(spa->spa_import_flags & ZFS_IMPORT_MISSING_LOG)) {
		nvlist_t **child, *nv;
		uint64_t idx = 0;

		child = FUNC4(rvd->vdev_children * sizeof (nvlist_t **),
		    KM_SLEEP);
		FUNC1(FUNC6(&nv, NV_UNIQUE_NAME, KM_SLEEP) == 0);

		for (uint64_t c = 0; c < rvd->vdev_children; c++) {
			vdev_t *tvd = rvd->vdev_child[c];

			/*
			 * We consider a device as missing only if it failed
			 * to open (i.e. offline or faulted is not considered
			 * as missing).
			 */
			if (tvd->vdev_islog &&
			    tvd->vdev_state == VDEV_STATE_CANT_OPEN) {
				child[idx++] = FUNC11(spa, tvd,
				    B_FALSE, VDEV_CONFIG_MISSING);
			}
		}

		if (idx > 0) {
			FUNC3(nv,
			    ZPOOL_CONFIG_CHILDREN, child, idx);
			FUNC2(spa->spa_load_info,
			    ZPOOL_CONFIG_MISSING_DEVICES, nv);

			for (uint64_t i = 0; i < idx; i++)
				FUNC7(child[i]);
		}
		FUNC7(nv);
		FUNC5(child, rvd->vdev_children * sizeof (char **));

		if (idx > 0) {
			FUNC8(spa, "some log devices are missing");
			FUNC12(rvd, 2);
			return (FUNC0(ENXIO));
		}
	} else {
		for (uint64_t c = 0; c < rvd->vdev_children; c++) {
			vdev_t *tvd = rvd->vdev_child[c];

			if (tvd->vdev_islog &&
			    tvd->vdev_state == VDEV_STATE_CANT_OPEN) {
				FUNC10(spa, SPA_LOG_CLEAR);
				FUNC9(spa, "some log devices are "
				    "missing, ZIL is dropped.");
				FUNC12(rvd, 2);
				break;
			}
		}
	}

	return (0);
}