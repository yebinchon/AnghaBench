#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int bt_rfd; int /*<<< orphan*/ * bt_pinned; int /*<<< orphan*/  bt_mp; } ;
struct TYPE_5__ {TYPE_2__* internal; } ;
typedef  TYPE_1__ DB ;
typedef  TYPE_2__ BTREE ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_INMEM ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC2(const DB *dbp)
{
	BTREE *t;

	t = dbp->internal;

	/* Toss any page pinned across calls. */
	if (t->bt_pinned != NULL) {
		FUNC1(t->bt_mp, t->bt_pinned, 0);
		t->bt_pinned = NULL;
	}

	/* In-memory database can't have a file descriptor. */
	if (FUNC0(t, R_INMEM)) {
		errno = ENOENT;
		return (-1);
	}
	return (t->bt_rfd);
}