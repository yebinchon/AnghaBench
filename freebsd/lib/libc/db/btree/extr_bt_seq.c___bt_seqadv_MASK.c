#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pgno_t ;
typedef  int /*<<< orphan*/  indx_t ;
struct TYPE_15__ {int /*<<< orphan*/  index; int /*<<< orphan*/  pgno; } ;
struct TYPE_18__ {TYPE_1__ pg; int /*<<< orphan*/  key; } ;
struct TYPE_19__ {int /*<<< orphan*/  bt_mp; TYPE_4__ bt_cursor; } ;
struct TYPE_17__ {int /*<<< orphan*/  index; TYPE_2__* page; } ;
struct TYPE_16__ {int /*<<< orphan*/  prevpg; int /*<<< orphan*/  nextpg; } ;
typedef  TYPE_2__ PAGE ;
typedef  TYPE_3__ EPG ;
typedef  TYPE_4__ CURSOR ;
typedef  TYPE_5__ BTREE ;

/* Variables and functions */
 int CURS_ACQUIRE ; 
 int CURS_AFTER ; 
 int CURS_BEFORE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 scalar_t__ FUNC1 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  P_INVALID ; 
 int RET_ERROR ; 
 int RET_SPECIAL ; 
 int RET_SUCCESS ; 
#define  R_NEXT 129 
#define  R_PREV 128 
 int FUNC3 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_3__*,int*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(BTREE *t, EPG *ep, int flags)
{
	CURSOR *c;
	PAGE *h;
	indx_t idx;
	pgno_t pg;
	int exact;

	/*
	 * There are a couple of states that we can be in.  The cursor has
	 * been initialized by the time we get here, but that's all we know.
	 */
	c = &t->bt_cursor;

	/*
	 * The cursor was deleted where there weren't any duplicate records,
	 * so the key was saved.  Find out where that key would go in the
	 * current tree.  It doesn't matter if the returned key is an exact
	 * match or not -- if it's an exact match, the record was added after
	 * the delete so we can just return it.  If not, as long as there's
	 * a record there, return it.
	 */
	if (FUNC1(c, CURS_ACQUIRE))
		return (FUNC3(t, &c->key, ep, &exact));

	/* Get the page referenced by the cursor. */
	if ((h = FUNC4(t->bt_mp, c->pg.pgno, 0)) == NULL)
		return (RET_ERROR);

	/*
	 * Find the next/previous record in the tree and point the cursor at
	 * it.  The cursor may not be moved until a new key has been found.
	 */
	switch (flags) {
	case R_NEXT:			/* Next record. */
		/*
		 * The cursor was deleted in duplicate records, and moved
		 * forward to a record that has yet to be returned.  Clear
		 * that flag, and return the record.
		 */
		if (FUNC1(c, CURS_AFTER))
			goto usecurrent;
		idx = c->pg.index;
		if (++idx == FUNC2(h)) {
			pg = h->nextpg;
			FUNC5(t->bt_mp, h, 0);
			if (pg == P_INVALID)
				return (RET_SPECIAL);
			if ((h = FUNC4(t->bt_mp, pg, 0)) == NULL)
				return (RET_ERROR);
			idx = 0;
		}
		break;
	case R_PREV:			/* Previous record. */
		/*
		 * The cursor was deleted in duplicate records, and moved
		 * backward to a record that has yet to be returned.  Clear
		 * that flag, and return the record.
		 */
		if (FUNC1(c, CURS_BEFORE)) {
usecurrent:		FUNC0(c, CURS_AFTER | CURS_BEFORE);
			ep->page = h;
			ep->index = c->pg.index;
			return (RET_SUCCESS);
		}
		idx = c->pg.index;
		if (idx == 0) {
			pg = h->prevpg;
			FUNC5(t->bt_mp, h, 0);
			if (pg == P_INVALID)
				return (RET_SPECIAL);
			if ((h = FUNC4(t->bt_mp, pg, 0)) == NULL)
				return (RET_ERROR);
			idx = FUNC2(h) - 1;
		} else
			--idx;
		break;
	}

	ep->page = h;
	ep->index = idx;
	return (RET_SUCCESS);
}