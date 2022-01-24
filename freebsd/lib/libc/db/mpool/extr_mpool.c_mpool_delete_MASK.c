#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct _hqh {int dummy; } ;
struct TYPE_7__ {int flags; int pgno; } ;
struct TYPE_6__ {int /*<<< orphan*/  curcache; struct _hqh lqh; struct _hqh* hqh; } ;
typedef  TYPE_1__ MPOOL ;
typedef  TYPE_2__ BKT ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int MPOOL_PINNED ; 
 int RET_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct _hqh*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  hq ; 
 int /*<<< orphan*/  q ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC5(MPOOL *mp, void *page)
{
	struct _hqh *head;
	BKT *bp;

	bp = (BKT *)((char *)page - sizeof(BKT));

#ifdef DEBUG
	if (!(bp->flags & MPOOL_PINNED)) {
		(void)fprintf(stderr,
		    "mpool_delete: page %d not pinned\n", bp->pgno);
		abort();
	}
#endif

	/* Remove from the hash and lru queues. */
	head = &mp->hqh[FUNC0(bp->pgno)];
	FUNC1(head, bp, hq);
	FUNC1(&mp->lqh, bp, q);

	FUNC4(bp);
	mp->curcache--;
	return (RET_SUCCESS);
}