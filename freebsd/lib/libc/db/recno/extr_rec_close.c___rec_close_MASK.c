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
struct TYPE_8__ {int /*<<< orphan*/  bt_rfd; int /*<<< orphan*/  bt_rfp; int /*<<< orphan*/  bt_msize; int /*<<< orphan*/  bt_smap; int /*<<< orphan*/ * bt_pinned; int /*<<< orphan*/  bt_mp; } ;
struct TYPE_7__ {TYPE_2__* internal; } ;
typedef  TYPE_1__ DB ;
typedef  TYPE_2__ BTREE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int RET_ERROR ; 
 int RET_SUCCESS ; 
 int /*<<< orphan*/  R_CLOSEFP ; 
 int /*<<< orphan*/  R_INMEM ; 
 int /*<<< orphan*/  R_MEMMAPPED ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(DB *dbp)
{
	BTREE *t;
	int status;

	t = dbp->internal;

	/* Toss any page pinned across calls. */
	if (t->bt_pinned != NULL) {
		FUNC5(t->bt_mp, t->bt_pinned, 0);
		t->bt_pinned = NULL;
	}

	if (FUNC2(dbp, 0) == RET_ERROR)
		return (RET_ERROR);

	/* Committed to closing. */
	status = RET_SUCCESS;
	if (FUNC0(t, R_MEMMAPPED) && FUNC6(t->bt_smap, t->bt_msize))
		status = RET_ERROR;

	if (!FUNC0(t, R_INMEM)) {
		if (FUNC0(t, R_CLOSEFP)) {
			if (FUNC4(t->bt_rfp))
				status = RET_ERROR;
		} else {
			if (FUNC3(t->bt_rfd))
				status = RET_ERROR;
		}
	}

	if (FUNC1(dbp) == RET_ERROR)
		status = RET_ERROR;

	return (status);
}