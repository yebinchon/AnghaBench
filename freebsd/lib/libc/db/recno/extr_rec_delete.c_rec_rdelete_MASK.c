#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  recno_t ;
struct TYPE_8__ {int /*<<< orphan*/  bt_mp; } ;
struct TYPE_7__ {int /*<<< orphan*/  index; int /*<<< orphan*/ * page; } ;
typedef  int /*<<< orphan*/  PAGE ;
typedef  TYPE_1__ EPG ;
typedef  TYPE_2__ BTREE ;

/* Variables and functions */
 int /*<<< orphan*/  MPOOL_DIRTY ; 
 int RET_ERROR ; 
 int RET_SUCCESS ; 
 int /*<<< orphan*/  SDELETE ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(BTREE *t, recno_t nrec)
{
	EPG *e;
	PAGE *h;
	int status;

	/* Find the record; __rec_search pins the page. */
	if ((e = FUNC1(t, nrec, SDELETE)) == NULL)
		return (RET_ERROR);

	/* Delete the record. */
	h = e->page;
	status = FUNC0(t, h, e->index);
	if (status != RET_SUCCESS) {
		FUNC2(t->bt_mp, h, 0);
		return (status);
	}
	FUNC2(t->bt_mp, h, MPOOL_DIRTY);
	return (RET_SUCCESS);
}