#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ccp_queue {unsigned int cq_acq_tail; unsigned int cq_tail; int /*<<< orphan*/  cq_lock; int /*<<< orphan*/ * desc_ring; TYPE_1__* cq_softc; } ;
struct TYPE_2__ {int ring_size_order; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct ccp_queue *qp)
{
	unsigned i;

	FUNC1(&qp->cq_lock, MA_OWNED);

	/* Wipe out any descriptors associated with this aborted txn. */
	for (i = qp->cq_acq_tail; i != qp->cq_tail;
	    i = (i + 1) % (1 << qp->cq_softc->ring_size_order)) {
		FUNC0(&qp->desc_ring[i], 0, sizeof(qp->desc_ring[i]));
	}
	qp->cq_tail = qp->cq_acq_tail;

	FUNC2(&qp->cq_lock);
}