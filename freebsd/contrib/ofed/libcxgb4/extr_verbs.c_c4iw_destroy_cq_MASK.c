#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ibv_cq {TYPE_1__* context; } ;
struct c4iw_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/ ** cqid2ptr; } ;
struct TYPE_4__ {int error; size_t cqid; struct c4iw_cq* sw_queue; int /*<<< orphan*/  memsize; int /*<<< orphan*/  queue; int /*<<< orphan*/  ugts; } ;
struct c4iw_cq {TYPE_2__ cq; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  c4iw_page_size ; 
 int /*<<< orphan*/  FUNC1 (struct c4iw_cq*) ; 
 int FUNC2 (struct ibv_cq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct c4iw_cq* FUNC6 (struct ibv_cq*) ; 
 struct c4iw_dev* FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct ibv_cq *ibcq)
{
	int ret;
	struct c4iw_cq *chp = FUNC6(ibcq);
	struct c4iw_dev *dev = FUNC7(ibcq->context->device);

	chp->cq.error = 1;
	ret = FUNC2(ibcq);
	if (ret) {
		return ret;
	}
	FUNC3(FUNC0(chp->cq.ugts), c4iw_page_size);
	FUNC3(chp->cq.queue, chp->cq.memsize);

	FUNC4(&dev->lock);
	dev->cqid2ptr[chp->cq.cqid] = NULL;
	FUNC5(&dev->lock);

	FUNC1(chp->cq.sw_queue);
	FUNC1(chp);
	return 0;
}