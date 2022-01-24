#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct _hqh {int dummy; } ;
typedef  void* pgno_t ;
struct TYPE_9__ {int flags; void* page; void* pgno; } ;
struct TYPE_8__ {scalar_t__ npages; int /*<<< orphan*/  lqh; struct _hqh* hqh; int /*<<< orphan*/  pagenew; } ;
typedef  TYPE_1__ MPOOL ;
typedef  TYPE_2__ BKT ;

/* Variables and functions */
 size_t FUNC0 (void*) ; 
 scalar_t__ MAX_PAGE_NUMBER ; 
 int MPOOL_INUSE ; 
 scalar_t__ MPOOL_PAGE_REQUEST ; 
 int MPOOL_PINNED ; 
 int /*<<< orphan*/  FUNC1 (struct _hqh*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hq ; 
 TYPE_2__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  q ; 
 int /*<<< orphan*/  stderr ; 

void *
FUNC6(MPOOL *mp, pgno_t *pgnoaddr, u_int flags)
{
	struct _hqh *head;
	BKT *bp;

	if (mp->npages == MAX_PAGE_NUMBER) {
		(void)FUNC4(stderr, "mpool_new: page allocation overflow.\n");
		FUNC3();
	}
#ifdef STATISTICS
	++mp->pagenew;
#endif
	/*
	 * Get a BKT from the cache.  Assign a new page number, attach
	 * it to the head of the hash chain, the tail of the lru chain,
	 * and return.
	 */
	if ((bp = FUNC5(mp)) == NULL)
		return (NULL);
	if (flags == MPOOL_PAGE_REQUEST) {
		mp->npages++;
		bp->pgno = *pgnoaddr;
	} else
		bp->pgno = *pgnoaddr = mp->npages++;

	bp->flags = MPOOL_PINNED | MPOOL_INUSE;

	head = &mp->hqh[FUNC0(bp->pgno)];
	FUNC1(head, bp, hq);
	FUNC2(&mp->lqh, bp, q);
	return (bp->page);
}