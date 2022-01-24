#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct iovec {int iov_len; int /*<<< orphan*/ * iov_base; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  recno_t ;
typedef  int off_t ;
struct TYPE_22__ {int /*<<< orphan*/  rcursor; } ;
struct TYPE_25__ {int (* bt_irec ) (TYPE_4__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  bt_rfd; TYPE_1__ bt_cursor; int /*<<< orphan*/  bt_bval; int /*<<< orphan*/ * bt_pinned; int /*<<< orphan*/  bt_mp; } ;
struct TYPE_24__ {int (* seq ) (TYPE_3__ const*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ;TYPE_4__* internal; } ;
struct TYPE_23__ {int size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ DBT ;
typedef  TYPE_3__ DB ;
typedef  TYPE_4__ BTREE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 scalar_t__ FUNC1 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  MAX_REC_NUMBER ; 
 int RET_ERROR ; 
 int RET_SUCCESS ; 
 int R_EOF ; 
 int /*<<< orphan*/  R_FIRST ; 
 int R_FIXLEN ; 
 int R_INMEM ; 
 int R_MODIFIED ; 
 int /*<<< orphan*/  R_NEXT ; 
 int R_RDONLY ; 
 scalar_t__ R_RECNOSYNC ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC2 (TYPE_3__ const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct iovec*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_3__ const*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_3__ const*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_3__ const*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_3__ const*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

int
FUNC13(const DB *dbp, u_int flags)
{
	struct iovec iov[2];
	BTREE *t;
	DBT data, key;
	off_t off;
	recno_t scursor, trec;
	int status;

	t = dbp->internal;

	/* Toss any page pinned across calls. */
	if (t->bt_pinned != NULL) {
		FUNC7(t->bt_mp, t->bt_pinned, 0);
		t->bt_pinned = NULL;
	}

	if (flags == R_RECNOSYNC)
		return (FUNC2(dbp, 0));

	if (FUNC1(t, R_RDONLY | R_INMEM) || !FUNC1(t, R_MODIFIED))
		return (RET_SUCCESS);

	/* Read any remaining records into the tree. */
	if (!FUNC1(t, R_EOF) && t->bt_irec(t, MAX_REC_NUMBER) == RET_ERROR)
		return (RET_ERROR);

	/* Rewind the file descriptor. */
	if (FUNC6(t->bt_rfd, (off_t)0, SEEK_SET) != 0)
		return (RET_ERROR);

	/* Save the cursor. */
	scursor = t->bt_cursor.rcursor;

	key.size = sizeof(recno_t);
	key.data = &trec;

	if (FUNC1(t, R_FIXLEN)) {
		/*
		 * We assume that fixed length records are all fixed length.
		 * Any that aren't are either EINVAL'd or corrected by the
		 * record put code.
		 */
		status = (dbp->seq)(dbp, &key, &data, R_FIRST);
		while (status == RET_SUCCESS) {
			if (FUNC3(t->bt_rfd, data.data, data.size) !=
			    (ssize_t)data.size)
				return (RET_ERROR);
			status = (dbp->seq)(dbp, &key, &data, R_NEXT);
		}
	} else {
		iov[1].iov_base = &t->bt_bval;
		iov[1].iov_len = 1;

		status = (dbp->seq)(dbp, &key, &data, R_FIRST);
		while (status == RET_SUCCESS) {
			iov[0].iov_base = data.data;
			iov[0].iov_len = data.size;
			if (FUNC4(t->bt_rfd, iov, 2) != (ssize_t)(data.size + 1))
				return (RET_ERROR);
			status = (dbp->seq)(dbp, &key, &data, R_NEXT);
		}
	}

	/* Restore the cursor. */
	t->bt_cursor.rcursor = scursor;

	if (status == RET_ERROR)
		return (RET_ERROR);
	if ((off = FUNC6(t->bt_rfd, (off_t)0, SEEK_CUR)) == -1)
		return (RET_ERROR);
	if (FUNC5(t->bt_rfd, off))
		return (RET_ERROR);
	FUNC0(t, R_MODIFIED);
	return (RET_SUCCESS);
}