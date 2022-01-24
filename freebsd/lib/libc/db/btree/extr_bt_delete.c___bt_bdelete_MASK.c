#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  bt_mp; } ;
struct TYPE_11__ {scalar_t__ index; int /*<<< orphan*/ * page; } ;
typedef  int /*<<< orphan*/  PAGE ;
typedef  TYPE_1__ EPG ;
typedef  int /*<<< orphan*/  DBT ;
typedef  TYPE_2__ BTREE ;

/* Variables and functions */
 int /*<<< orphan*/  B_NODUPS ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPOOL_DIRTY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int RET_ERROR ; 
 int RET_SPECIAL ; 
 int RET_SUCCESS ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (TYPE_2__*,int /*<<< orphan*/  const*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(BTREE *t, const DBT *key)
{
	EPG *e;
	PAGE *h;
	int deleted, exact, redo;

	deleted = 0;

	/* Find any matching record; __bt_search pins the page. */
loop:	if ((e = FUNC5(t, key, &exact)) == NULL)
		return (deleted ? RET_SUCCESS : RET_ERROR);
	if (!exact) {
		FUNC6(t->bt_mp, e->page, 0);
		return (deleted ? RET_SUCCESS : RET_SPECIAL);
	}

	/*
	 * Delete forward, then delete backward, from the found key.  If
	 * there are duplicates and we reach either side of the page, do
	 * the key search again, so that we get them all.
	 */
	redo = 0;
	h = e->page;
	do {
		if (FUNC3(t, key, h, e->index)) {
			FUNC6(t->bt_mp, h, 0);
			return (RET_ERROR);
		}
		if (FUNC0(t, B_NODUPS)) {
			if (FUNC1(h) == 0) {
				if (FUNC4(t, h))
					return (RET_ERROR);
			} else
				FUNC6(t->bt_mp, h, MPOOL_DIRTY);
			return (RET_SUCCESS);
		}
		deleted = 1;
	} while (e->index < FUNC1(h) && FUNC2(t, key, e) == 0);

	/* Check for right-hand edge of the page. */
	if (e->index == FUNC1(h))
		redo = 1;

	/* Delete from the key to the beginning of the page. */
	while (e->index-- > 0) {
		if (FUNC2(t, key, e) != 0)
			break;
		if (FUNC3(t, key, h, e->index) == RET_ERROR) {
			FUNC6(t->bt_mp, h, 0);
			return (RET_ERROR);
		}
		if (e->index == 0)
			redo = 1;
	}

	/* Check for an empty page. */
	if (FUNC1(h) == 0) {
		if (FUNC4(t, h))
			return (RET_ERROR);
		goto loop;
	}

	/* Put the page. */
	FUNC6(t->bt_mp, h, MPOOL_DIRTY);

	if (redo)
		goto loop;
	return (RET_SUCCESS);
}