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
typedef  scalar_t__ u_int ;
struct TYPE_8__ {int /*<<< orphan*/  bt_mp; int /*<<< orphan*/ * bt_pinned; } ;
struct TYPE_7__ {TYPE_2__* internal; } ;
typedef  TYPE_1__ DB ;
typedef  TYPE_2__ BTREE ;

/* Variables and functions */
 int B_INMEM ; 
 int B_METADIRTY ; 
 int B_MODIFIED ; 
 int B_RDONLY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int) ; 
 int RET_ERROR ; 
 int RET_SUCCESS ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(const DB *dbp, u_int flags)
{
	BTREE *t;
	int status;

	t = dbp->internal;

	/* Toss any page pinned across calls. */
	if (t->bt_pinned != NULL) {
		FUNC3(t->bt_mp, t->bt_pinned, 0);
		t->bt_pinned = NULL;
	}

	/* Sync doesn't currently take any flags. */
	if (flags != 0) {
		errno = EINVAL;
		return (RET_ERROR);
	}

	if (FUNC1(t, B_INMEM | B_RDONLY) ||
	    !FUNC1(t, B_MODIFIED | B_METADIRTY))
		return (RET_SUCCESS);

	if (FUNC1(t, B_METADIRTY) && FUNC2(t) == RET_ERROR)
		return (RET_ERROR);

	if ((status = FUNC4(t->bt_mp)) == RET_SUCCESS)
		FUNC0(t, B_MODIFIED);

	return (status);
}