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
struct TYPE_2__ {int /*<<< orphan*/  flushed; } ;
struct c4iw_qp {int /*<<< orphan*/  lock; TYPE_1__ wq; } ;
struct c4iw_dev {int max_qp; int /*<<< orphan*/  lock; struct c4iw_qp** qpid2ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct c4iw_qp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

void FUNC4(struct c4iw_dev *dev)
{
	int i;

	FUNC1(&dev->lock);
	for (i=0; i < dev->max_qp; i++) {
		struct c4iw_qp *qhp = dev->qpid2ptr[i];
		if (qhp) {
			if (!qhp->wq.flushed && FUNC3(&qhp->wq)) {
				FUNC1(&qhp->lock);
				FUNC0(qhp);
				FUNC2(&qhp->lock);
			}
		}
	}
	FUNC2(&dev->lock);
}