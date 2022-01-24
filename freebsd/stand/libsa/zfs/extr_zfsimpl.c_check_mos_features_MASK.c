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
typedef  scalar_t__ uint64_t ;
struct TYPE_13__ {int /*<<< orphan*/  spa_mos; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  objnum ;
struct TYPE_14__ {scalar_t__ dn_type; int dn_datablkszsec; } ;
typedef  TYPE_2__ dnode_phys_t ;

/* Variables and functions */
 scalar_t__ DMU_OTN_ZAP_METADATA ; 
 scalar_t__ DMU_OT_OBJECT_DIRECTORY ; 
 int /*<<< orphan*/  DMU_POOL_FEATURES_FOR_READ ; 
 int EIO ; 
 scalar_t__ ZBT_MICRO ; 
 int /*<<< orphan*/  check_feature ; 
 scalar_t__ FUNC0 (TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int FUNC1 (TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ *,scalar_t__,TYPE_2__*) ; 
 int FUNC4 (TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ ,int,int,scalar_t__*) ; 
 scalar_t__ zap_scratch ; 

__attribute__((used)) static int
FUNC5(const spa_t *spa)
{
	dnode_phys_t dir;
	uint64_t objnum, zap_type;
	size_t size;
	int rc;

	if ((rc = FUNC3(spa, &spa->spa_mos, DMU_OT_OBJECT_DIRECTORY,
	    &dir)) != 0)
		return (rc);
	if ((rc = FUNC4(spa, &dir, DMU_POOL_FEATURES_FOR_READ,
	    sizeof (objnum), 1, &objnum)) != 0) {
		/*
		 * It is older pool without features. As we have already
		 * tested the label, just return without raising the error.
		 */
		return (0);
	}

	if ((rc = FUNC3(spa, &spa->spa_mos, objnum, &dir)) != 0)
		return (rc);

	if (dir.dn_type != DMU_OTN_ZAP_METADATA)
		return (EIO);

	size = dir.dn_datablkszsec * 512;
	if (FUNC0(spa, &dir, 0, zap_scratch, size))
		return (EIO);

	zap_type = *(uint64_t *) zap_scratch;
	if (zap_type == ZBT_MICRO)
		rc = FUNC2(&dir, check_feature);
	else
		rc = FUNC1(spa, &dir, check_feature);

	return (rc);
}