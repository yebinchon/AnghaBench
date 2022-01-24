#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_13__ {int /*<<< orphan*/  sa_lock; int /*<<< orphan*/  sa_layout_num_tree; int /*<<< orphan*/  sa_layout_hash_tree; } ;
typedef  TYPE_1__ sa_os_t ;
struct TYPE_14__ {scalar_t__ lot_hash; scalar_t__ lot_instance; } ;
typedef  TYPE_2__ sa_lot_t ;
typedef  int /*<<< orphan*/  sa_attr_type_t ;
struct TYPE_15__ {TYPE_1__* os_sa; } ;
typedef  TYPE_3__ objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  avl_index_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC7(objset_t *os, uint64_t hash, sa_attr_type_t *attrs,
    int count, dmu_tx_t *tx, sa_lot_t **lot)
{
	sa_lot_t *tb, tbsearch;
	avl_index_t loc;
	sa_os_t *sa = os->os_sa;
	boolean_t found = B_FALSE;

	FUNC3(&sa->sa_lock);
	tbsearch.lot_hash = hash;
	tbsearch.lot_instance = 0;
	tb = FUNC1(&sa->sa_layout_hash_tree, &tbsearch, &loc);
	if (tb) {
		for (; tb && tb->lot_hash == hash;
		    tb = FUNC0(&sa->sa_layout_hash_tree, tb)) {
			if (FUNC6(tb, attrs, count) == 0) {
				found = B_TRUE;
				break;
			}
		}
	}
	if (!found) {
		tb = FUNC5(os, attrs, count,
		    FUNC2(&sa->sa_layout_num_tree), hash, B_TRUE, tx);
	}
	FUNC4(&sa->sa_lock);
	*lot = tb;
}