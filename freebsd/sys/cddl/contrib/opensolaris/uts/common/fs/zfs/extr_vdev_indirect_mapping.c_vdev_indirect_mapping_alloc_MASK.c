#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* vimp_counts_object; } ;
typedef  TYPE_1__ vdev_indirect_mapping_phys_t ;
typedef  int uint64_t ;
struct TYPE_11__ {int /*<<< orphan*/  os_spa; } ;
typedef  TYPE_2__ objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_12__ {TYPE_1__* db_data; } ;
typedef  TYPE_3__ dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMU_OTN_UINT32_METADATA ; 
 int /*<<< orphan*/  DMU_OTN_UINT64_METADATA ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  SPA_FEATURE_OBSOLETE_COUNTS ; 
 int /*<<< orphan*/  SPA_OLD_MAXBLOCKSIZE ; 
 int VDEV_INDIRECT_MAPPING_SIZE_V0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint64_t
FUNC9(objset_t *os, dmu_tx_t *tx)
{
	uint64_t object;
	FUNC0(FUNC6(tx));
	uint64_t bonus_size = VDEV_INDIRECT_MAPPING_SIZE_V0;

	if (FUNC8(os->os_spa, SPA_FEATURE_OBSOLETE_COUNTS)) {
		bonus_size = sizeof (vdev_indirect_mapping_phys_t);
	}

	object = FUNC5(os,
	    DMU_OTN_UINT64_METADATA, SPA_OLD_MAXBLOCKSIZE,
	    DMU_OTN_UINT64_METADATA, bonus_size,
	    tx);

	if (FUNC8(os->os_spa, SPA_FEATURE_OBSOLETE_COUNTS)) {
		dmu_buf_t *dbuf;
		vdev_indirect_mapping_phys_t *vimp;

		FUNC1(FUNC2(os, object, FTAG, &dbuf));
		FUNC4(dbuf, tx);
		vimp = dbuf->db_data;
		vimp->vimp_counts_object = FUNC5(os,
		    DMU_OTN_UINT32_METADATA, SPA_OLD_MAXBLOCKSIZE,
		    DMU_OT_NONE, 0, tx);
		FUNC7(os->os_spa, SPA_FEATURE_OBSOLETE_COUNTS, tx);
		FUNC3(dbuf, FTAG);
	}

	return (object);
}