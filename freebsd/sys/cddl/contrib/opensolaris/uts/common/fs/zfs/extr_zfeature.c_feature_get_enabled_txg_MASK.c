#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  fi_guid; int /*<<< orphan*/  fi_feature; } ;
typedef  TYPE_1__ zfeature_info_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_7__ {scalar_t__ spa_feat_enabled_txg_obj; int /*<<< orphan*/  spa_meta_objset; } ;
typedef  TYPE_2__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_ENABLED_TXG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int,scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(spa_t *spa, zfeature_info_t *feature, uint64_t *res)
{
	uint64_t enabled_txg_obj = spa->spa_feat_enabled_txg_obj;

	FUNC0(FUNC5(feature->fi_feature,
	    SPA_FEATURE_ENABLED_TXG));

	if (!FUNC3(spa, feature->fi_feature)) {
		return (FUNC1(ENOTSUP));
	}

	FUNC0(enabled_txg_obj != 0);

	FUNC2(FUNC4(spa->spa_meta_objset, spa->spa_feat_enabled_txg_obj,
	    feature->fi_guid, sizeof (uint64_t), 1, res));

	return (0);
}