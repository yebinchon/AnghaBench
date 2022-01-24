#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  scn_visited_this_txg; TYPE_2__* scn_dp; int /*<<< orphan*/  scn_zio_root; int /*<<< orphan*/  scn_is_bptree; } ;
typedef  TYPE_3__ dsl_scan_t ;
struct TYPE_12__ {TYPE_1__* tx_pool; } ;
typedef  TYPE_4__ dmu_tx_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
struct TYPE_10__ {int /*<<< orphan*/  dp_spa; } ;
struct TYPE_9__ {int /*<<< orphan*/  dp_free_dir; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  DD_USED_HEAD ; 
 scalar_t__ DMU_OT_OBJSET ; 
 int /*<<< orphan*/  ERESTART ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(void *arg, const blkptr_t *bp, dmu_tx_t *tx)
{
	dsl_scan_t *scn = arg;

	if (!scn->scn_is_bptree ||
	    (FUNC0(bp) == 0 && FUNC2(bp) != DMU_OT_OBJSET)) {
		if (FUNC8(scn))
			return (FUNC4(ERESTART));
	}

	FUNC10(FUNC9(scn->scn_zio_root, scn->scn_dp->dp_spa,
	    FUNC6(tx), bp, FUNC1(bp), 0));
	FUNC7(tx->tx_pool->dp_free_dir, DD_USED_HEAD,
	    -FUNC5(scn->scn_dp->dp_spa, bp),
	    -FUNC1(bp), -FUNC3(bp), tx);
	scn->scn_visited_this_txg++;
	return (0);
}