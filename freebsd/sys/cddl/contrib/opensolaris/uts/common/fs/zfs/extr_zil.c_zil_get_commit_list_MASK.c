#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  zl_spa; TYPE_3__* zl_itxg; int /*<<< orphan*/  zl_issuer_lock; int /*<<< orphan*/  zl_itx_commit_list; } ;
typedef  TYPE_2__ zilog_t ;
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  list_t ;
struct TYPE_8__ {size_t itxg_txg; int /*<<< orphan*/  itxg_lock; TYPE_1__* itxg_itxs; } ;
typedef  TYPE_3__ itxg_t ;
struct TYPE_6__ {int /*<<< orphan*/  i_sync_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 size_t TXG_CONCURRENT_STATES ; 
 size_t TXG_MASK ; 
 scalar_t__ UINT64_MAX ; 
 size_t ZILTEST_TXG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*,size_t) ; 

__attribute__((used)) static void
FUNC8(zilog_t *zilog)
{
	uint64_t otxg, txg;
	list_t *commit_list = &zilog->zl_itx_commit_list;

	FUNC0(FUNC1(&zilog->zl_issuer_lock));

	if (FUNC5(zilog->zl_spa) != UINT64_MAX) /* ziltest support */
		otxg = ZILTEST_TXG;
	else
		otxg = FUNC6(zilog->zl_spa) + 1;

	/*
	 * This is inherently racy, since there is nothing to prevent
	 * the last synced txg from changing. That's okay since we'll
	 * only commit things in the future.
	 */
	for (txg = otxg; txg < (otxg + TXG_CONCURRENT_STATES); txg++) {
		itxg_t *itxg = &zilog->zl_itxg[txg & TXG_MASK];

		FUNC3(&itxg->itxg_lock);
		if (itxg->itxg_txg != txg) {
			FUNC4(&itxg->itxg_lock);
			continue;
		}

		/*
		 * If we're adding itx records to the zl_itx_commit_list,
		 * then the zil better be dirty in this "txg". We can assert
		 * that here since we're holding the itxg_lock which will
		 * prevent spa_sync from cleaning it. Once we add the itxs
		 * to the zl_itx_commit_list we must commit it to disk even
		 * if it's unnecessary (i.e. the txg was synced).
		 */
		FUNC0(FUNC7(zilog, txg) ||
		    FUNC5(zilog->zl_spa) != UINT64_MAX);
		FUNC2(commit_list, &itxg->itxg_itxs->i_sync_list);

		FUNC4(&itxg->itxg_lock);
	}
}