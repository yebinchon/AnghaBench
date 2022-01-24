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
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_3__ {scalar_t__ doi_bonus_size; } ;
typedef  TYPE_1__ dmu_object_info_t ;

/* Variables and functions */
 scalar_t__ SPACE_MAP_SIZE_V0 ; 
 int /*<<< orphan*/  SPA_FEATURE_SPACEMAP_HISTOGRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6(objset_t *os, uint64_t smobj, dmu_tx_t *tx)
{
	spa_t *spa = FUNC3(os);
	if (FUNC5(spa, SPA_FEATURE_SPACEMAP_HISTOGRAM)) {
		dmu_object_info_t doi;

		FUNC0(FUNC2(os, smobj, &doi));
		if (doi.doi_bonus_size != SPACE_MAP_SIZE_V0) {
			FUNC4(spa,
			    SPA_FEATURE_SPACEMAP_HISTOGRAM, tx);
		}
	}

	FUNC0(FUNC1(os, smobj, tx));
}