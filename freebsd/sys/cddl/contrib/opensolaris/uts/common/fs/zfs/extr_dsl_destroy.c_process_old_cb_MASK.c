#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_12__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
struct process_old_arg {int /*<<< orphan*/  pio; int /*<<< orphan*/  uncomp; int /*<<< orphan*/  comp; int /*<<< orphan*/  used; TYPE_12__* ds_prev; int /*<<< orphan*/  after_branch_point; TYPE_12__* ds; } ;
struct TYPE_20__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_2__ dsl_pool_t ;
struct TYPE_21__ {int /*<<< orphan*/  tx_txg; } ;
typedef  TYPE_3__ dmu_tx_t ;
struct TYPE_22__ {scalar_t__ blk_birth; } ;
typedef  TYPE_4__ blkptr_t ;
struct TYPE_19__ {TYPE_2__* dd_pool; } ;
struct TYPE_18__ {int /*<<< orphan*/  ds_deadlist; TYPE_1__* ds_dir; } ;
struct TYPE_17__ {scalar_t__ ds_prev_snap_txg; int /*<<< orphan*/  ds_unique_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_4__ const*) ; 
 scalar_t__ FUNC2 (TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__ const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_4__ const*) ; 
 TYPE_11__* FUNC5 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__ const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,TYPE_4__ const*) ; 

__attribute__((used)) static int
FUNC8(void *arg, const blkptr_t *bp, dmu_tx_t *tx)
{
	struct process_old_arg *poa = arg;
	dsl_pool_t *dp = poa->ds->ds_dir->dd_pool;

	FUNC0(!FUNC3(bp));

	if (bp->blk_birth <= FUNC5(poa->ds)->ds_prev_snap_txg) {
		FUNC6(&poa->ds->ds_deadlist, bp, tx);
		if (poa->ds_prev && !poa->after_branch_point &&
		    bp->blk_birth >
		    FUNC5(poa->ds_prev)->ds_prev_snap_txg) {
			FUNC5(poa->ds_prev)->ds_unique_bytes +=
			    FUNC4(dp->dp_spa, bp);
		}
	} else {
		poa->used += FUNC4(dp->dp_spa, bp);
		poa->comp += FUNC1(bp);
		poa->uncomp += FUNC2(bp);
		FUNC7(poa->pio, dp, tx->tx_txg, bp);
	}
	return (0);
}