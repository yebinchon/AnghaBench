#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  dl_lock; int /*<<< orphan*/  dl_tree; TYPE_1__* dl_phys; int /*<<< orphan*/  dl_os; int /*<<< orphan*/  dl_dbuf; int /*<<< orphan*/  dl_bpobj; scalar_t__ dl_oldfmt; } ;
typedef  TYPE_2__ dsl_deadlist_t ;
struct TYPE_22__ {int /*<<< orphan*/  dle_mintxg; } ;
typedef  TYPE_3__ dsl_deadlist_entry_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_23__ {int /*<<< orphan*/  blk_birth; } ;
typedef  TYPE_4__ blkptr_t ;
typedef  int /*<<< orphan*/  avl_index_t ;
struct TYPE_20__ {int /*<<< orphan*/  dl_uncomp; int /*<<< orphan*/  dl_comp; int /*<<< orphan*/  dl_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVL_BEFORE ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_4__ const*) ; 
 scalar_t__ FUNC2 (TYPE_4__ const*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_3__*,TYPE_4__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void
FUNC13(dsl_deadlist_t *dl, const blkptr_t *bp, dmu_tx_t *tx)
{
	dsl_deadlist_entry_t dle_tofind;
	dsl_deadlist_entry_t *dle;
	avl_index_t where;

	if (dl->dl_oldfmt) {
		FUNC6(&dl->dl_bpobj, bp, tx);
		return;
	}

	FUNC11(&dl->dl_lock);
	FUNC10(dl);

	FUNC8(dl->dl_dbuf, tx);
	dl->dl_phys->dl_used +=
	    FUNC5(FUNC9(dl->dl_os), bp);
	dl->dl_phys->dl_comp += FUNC1(bp);
	dl->dl_phys->dl_uncomp += FUNC2(bp);

	dle_tofind.dle_mintxg = bp->blk_birth;
	dle = FUNC3(&dl->dl_tree, &dle_tofind, &where);
	if (dle == NULL)
		dle = FUNC4(&dl->dl_tree, where, AVL_BEFORE);
	else
		dle = FUNC0(&dl->dl_tree, dle);
	FUNC7(dl, dle, bp, tx);
	FUNC12(&dl->dl_lock);
}