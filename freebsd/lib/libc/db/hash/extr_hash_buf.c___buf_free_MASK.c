#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int flags; struct TYPE_11__* prev; struct TYPE_11__* page; scalar_t__ addr; } ;
struct TYPE_10__ {int /*<<< orphan*/  BSIZE; TYPE_2__ bufhead; } ;
typedef  TYPE_1__ HTAB ;
typedef  TYPE_2__ BUFHEAD ;

/* Variables and functions */
 int BUF_MOD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_2__* LRU ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_2__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(HTAB *hashp, int do_free, int to_disk)
{
	BUFHEAD *bp;

	/* Need to make sure that buffer manager has been initialized */
	if (!LRU)
		return (0);
	for (bp = LRU; bp != &hashp->bufhead;) {
		/* Check that the buffer is valid */
		if (bp->addr || FUNC1(bp->flags)) {
			if (to_disk && (bp->flags & BUF_MOD) &&
			    FUNC2(hashp, bp->page,
			    bp->addr, FUNC1(bp->flags), 0))
				return (-1);
		}
		/* Check if we are freeing stuff */
		if (do_free) {
			if (bp->page) {
				(void)FUNC4(bp->page, 0, hashp->BSIZE);
				FUNC3(bp->page);
			}
			FUNC0(bp);
			FUNC3(bp);
			bp = LRU;
		} else
			bp = bp->prev;
	}
	return (0);
}