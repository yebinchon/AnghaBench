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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_3__ {scalar_t__ dp_empty_bpobj; } ;
typedef  TYPE_1__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  DMU_POOL_EMPTY_BPOBJ ; 
 int /*<<< orphan*/  SPA_FEATURE_EMPTY_BPOBJ ; 
 int SPA_OLD_MAXBLOCKSIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__*,int /*<<< orphan*/ *) ; 

uint64_t
FUNC10(objset_t *os, int blocksize, dmu_tx_t *tx)
{
	spa_t *spa = FUNC5(os);
	dsl_pool_t *dp = FUNC4(os);

	if (FUNC8(spa, SPA_FEATURE_EMPTY_BPOBJ)) {
		if (!FUNC7(spa, SPA_FEATURE_EMPTY_BPOBJ)) {
			FUNC1(dp->dp_empty_bpobj);
			dp->dp_empty_bpobj =
			    FUNC3(os, SPA_OLD_MAXBLOCKSIZE, tx);
			FUNC2(FUNC9(os,
			    DMU_POOL_DIRECTORY_OBJECT,
			    DMU_POOL_EMPTY_BPOBJ, sizeof (uint64_t), 1,
			    &dp->dp_empty_bpobj, tx) == 0);
		}
		FUNC6(spa, SPA_FEATURE_EMPTY_BPOBJ, tx);
		FUNC0(dp->dp_empty_bpobj != 0);
		return (dp->dp_empty_bpobj);
	} else {
		return (FUNC3(os, blocksize, tx));
	}
}