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
struct TYPE_10__ {TYPE_3__* zl_itxg; int /*<<< orphan*/  zl_spa; } ;
typedef  TYPE_2__ zilog_t ;
typedef  size_t uint64_t ;
struct TYPE_11__ {size_t itxg_txg; int /*<<< orphan*/  itxg_lock; TYPE_1__* itxg_itxs; } ;
typedef  TYPE_3__ itxg_t ;
struct TYPE_12__ {int /*<<< orphan*/  ia_list; } ;
typedef  TYPE_4__ itx_async_node_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;
typedef  int /*<<< orphan*/  avl_index_t ;
struct TYPE_9__ {int /*<<< orphan*/  i_sync_list; int /*<<< orphan*/  i_async_tree; } ;

/* Variables and functions */
 size_t TXG_CONCURRENT_STATES ; 
 size_t TXG_MASK ; 
 scalar_t__ UINT64_MAX ; 
 size_t ZILTEST_TXG ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *,void**) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(zilog_t *zilog, uint64_t foid)
{
	uint64_t otxg, txg;
	itx_async_node_t *ian;
	avl_tree_t *t;
	avl_index_t where;

	if (FUNC7(zilog->zl_spa) != UINT64_MAX) /* ziltest support */
		otxg = ZILTEST_TXG;
	else
		otxg = FUNC8(zilog->zl_spa) + 1;

	/*
	 * This is inherently racy, since there is nothing to prevent
	 * the last synced txg from changing.
	 */
	for (txg = otxg; txg < (otxg + TXG_CONCURRENT_STATES); txg++) {
		itxg_t *itxg = &zilog->zl_itxg[txg & TXG_MASK];

		FUNC5(&itxg->itxg_lock);
		if (itxg->itxg_txg != txg) {
			FUNC6(&itxg->itxg_lock);
			continue;
		}

		/*
		 * If a foid is specified then find that node and append its
		 * list. Otherwise walk the tree appending all the lists
		 * to the sync list. We add to the end rather than the
		 * beginning to ensure the create has happened.
		 */
		t = &itxg->itxg_itxs->i_async_tree;
		if (foid != 0) {
			ian = FUNC1(t, &foid, &where);
			if (ian != NULL) {
				FUNC4(&itxg->itxg_itxs->i_sync_list,
				    &ian->ia_list);
			}
		} else {
			void *cookie = NULL;

			while ((ian = FUNC0(t, &cookie)) != NULL) {
				FUNC4(&itxg->itxg_itxs->i_sync_list,
				    &ian->ia_list);
				FUNC3(&ian->ia_list);
				FUNC2(ian, sizeof (itx_async_node_t));
			}
		}
		FUNC6(&itxg->itxg_lock);
	}
}