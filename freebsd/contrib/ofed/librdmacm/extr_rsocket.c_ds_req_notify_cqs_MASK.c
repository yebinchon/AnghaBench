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
struct rsocket {struct ds_qp* qp_list; } ;
struct ds_qp {int cq_armed; TYPE_1__* cm_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  recv_cq; } ;

/* Variables and functions */
 struct ds_qp* FUNC0 (struct ds_qp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rsocket *rs)
{
	struct ds_qp *qp;

	if (!(qp = rs->qp_list))
		return;

	do {
		if (!qp->cq_armed) {
			FUNC1(qp->cm_id->recv_cq, 0);
			qp->cq_armed = 1;
		}
		qp = FUNC0(qp);
	} while (qp != rs->qp_list);
}