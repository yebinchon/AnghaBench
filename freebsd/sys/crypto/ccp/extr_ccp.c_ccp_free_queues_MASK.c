#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ccp_softc {struct ccp_queue* queues; } ;
struct ccp_queue {int /*<<< orphan*/  cq_sg_dst; int /*<<< orphan*/  cq_sg_ulptx; int /*<<< orphan*/  cq_sg_crp; int /*<<< orphan*/  cq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (struct ccp_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ccp_softc *sc)
{
	struct ccp_queue *qp;
	size_t i;

	for (i = 0; i < FUNC1(sc->queues); i++) {
		qp = &sc->queues[i];

		FUNC0(&qp->cq_lock);
		FUNC2(qp->cq_sg_crp);
		FUNC2(qp->cq_sg_ulptx);
		FUNC2(qp->cq_sg_dst);
	}
}