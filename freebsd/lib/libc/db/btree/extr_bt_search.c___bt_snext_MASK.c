#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* page; scalar_t__ index; } ;
struct TYPE_12__ {int /*<<< orphan*/  bt_mp; TYPE_2__ bt_cur; } ;
struct TYPE_10__ {int /*<<< orphan*/  nextpg; } ;
typedef  TYPE_1__ PAGE ;
typedef  TYPE_2__ EPG ;
typedef  int /*<<< orphan*/  DBT ;
typedef  TYPE_3__ BTREE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/  const*,TYPE_2__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(BTREE *t, PAGE *h, const DBT *key, int *exactp)
{
	EPG e;

	/*
	 * Get the next page.  The key is either an exact
	 * match, or not as good as the one we already have.
	 */
	if ((e.page = FUNC1(t->bt_mp, h->nextpg, 0)) == NULL)
		return (0);
	e.index = 0;
	if (FUNC0(t, key, &e) == 0) {
		FUNC2(t->bt_mp, h, 0);
		t->bt_cur = e;
		*exactp = 1;
		return (1);
	}
	FUNC2(t->bt_mp, e.page, 0);
	return (0);
}