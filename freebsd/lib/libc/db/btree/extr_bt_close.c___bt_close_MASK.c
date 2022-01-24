#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_5__* data; scalar_t__ size; } ;
struct TYPE_12__ {TYPE_5__* data; scalar_t__ size; } ;
struct TYPE_10__ {TYPE_5__* data; scalar_t__ size; } ;
struct TYPE_11__ {TYPE_1__ key; } ;
struct TYPE_14__ {int bt_fd; TYPE_4__ bt_rdata; TYPE_3__ bt_rkey; TYPE_2__ bt_cursor; int /*<<< orphan*/  bt_mp; int /*<<< orphan*/ * bt_pinned; struct TYPE_14__* internal; } ;
typedef  TYPE_5__ DB ;
typedef  TYPE_5__ BTREE ;

/* Variables and functions */
 scalar_t__ RET_ERROR ; 
 int RET_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC5(DB *dbp)
{
	BTREE *t;
	int fd;

	t = dbp->internal;

	/* Toss any page pinned across calls. */
	if (t->bt_pinned != NULL) {
		FUNC4(t->bt_mp, t->bt_pinned, 0);
		t->bt_pinned = NULL;
	}

	/* Sync the tree. */
	if (FUNC0(dbp, 0) == RET_ERROR)
		return (RET_ERROR);

	/* Close the memory pool. */
	if (FUNC3(t->bt_mp) == RET_ERROR)
		return (RET_ERROR);

	/* Free random memory. */
	if (t->bt_cursor.key.data != NULL) {
		FUNC2(t->bt_cursor.key.data);
		t->bt_cursor.key.size = 0;
		t->bt_cursor.key.data = NULL;
	}
	if (t->bt_rkey.data) {
		FUNC2(t->bt_rkey.data);
		t->bt_rkey.size = 0;
		t->bt_rkey.data = NULL;
	}
	if (t->bt_rdata.data) {
		FUNC2(t->bt_rdata.data);
		t->bt_rdata.size = 0;
		t->bt_rdata.data = NULL;
	}

	fd = t->bt_fd;
	FUNC2(t);
	FUNC2(dbp);
	return (FUNC1(fd) ? RET_ERROR : RET_SUCCESS);
}