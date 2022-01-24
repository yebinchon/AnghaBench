#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pgno_t ;
struct TYPE_9__ {int /*<<< orphan*/  bt_mp; int /*<<< orphan*/  bt_free; } ;
struct TYPE_8__ {int /*<<< orphan*/  nextpg; } ;
typedef  TYPE_1__ PAGE ;
typedef  TYPE_2__ BTREE ;

/* Variables and functions */
 int /*<<< orphan*/  B_METADIRTY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPOOL_PAGE_NEXT ; 
 int /*<<< orphan*/  P_INVALID ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

PAGE *
FUNC3(BTREE *t, pgno_t *npg)
{
	PAGE *h;

	if (t->bt_free != P_INVALID &&
	    (h = FUNC1(t->bt_mp, t->bt_free, 0)) != NULL) {
		*npg = t->bt_free;
		t->bt_free = h->nextpg;
		FUNC0(t, B_METADIRTY);
		return (h);
	}
	return (FUNC2(t->bt_mp, npg, MPOOL_PAGE_NEXT));
}