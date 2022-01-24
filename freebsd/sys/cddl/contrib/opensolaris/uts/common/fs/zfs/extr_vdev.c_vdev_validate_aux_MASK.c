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
struct TYPE_6__ {scalar_t__ vdev_guid; } ;
typedef  TYPE_1__ vdev_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  VDEV_AUX_CORRUPT_DATA ; 
 int /*<<< orphan*/  VDEV_STATE_CANT_OPEN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_STATE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(vdev_t *vd)
{
	nvlist_t *label;
	uint64_t guid, version;
	uint64_t state;

	if (!FUNC4(vd))
		return (0);

	if ((label = FUNC3(vd, -1ULL)) == NULL) {
		FUNC5(vd, B_TRUE, VDEV_STATE_CANT_OPEN,
		    VDEV_AUX_CORRUPT_DATA);
		return (-1);
	}

	if (FUNC2(label, ZPOOL_CONFIG_VERSION, &version) != 0 ||
	    !FUNC0(version) ||
	    FUNC2(label, ZPOOL_CONFIG_GUID, &guid) != 0 ||
	    guid != vd->vdev_guid ||
	    FUNC2(label, ZPOOL_CONFIG_POOL_STATE, &state) != 0) {
		FUNC5(vd, B_TRUE, VDEV_STATE_CANT_OPEN,
		    VDEV_AUX_CORRUPT_DATA);
		FUNC1(label);
		return (-1);
	}

	/*
	 * We don't actually check the pool state here.  If it's in fact in
	 * use by another pool, we update this fact on the fly when requested.
	 */
	FUNC1(label);
	return (0);
}