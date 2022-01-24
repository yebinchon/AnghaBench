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
struct ibv_grh {int dummy; } ;
struct ds_qp {void* rmr; TYPE_1__* rs; int /*<<< orphan*/  rbuf; int /*<<< orphan*/  cm_id; void* smr; } ;
struct TYPE_2__ {scalar_t__ rbuf_size; scalar_t__ sbuf_size; int /*<<< orphan*/  sbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct ds_qp *qp)
{
	qp->rbuf = FUNC1(qp->rs->rbuf_size + sizeof(struct ibv_grh), 1);
	if (!qp->rbuf)
		return FUNC0(ENOMEM);

	qp->smr = FUNC2(qp->cm_id, qp->rs->sbuf, qp->rs->sbuf_size);
	if (!qp->smr)
		return -1;

	qp->rmr = FUNC2(qp->cm_id, qp->rbuf, qp->rs->rbuf_size +
						     sizeof(struct ibv_grh));
	if (!qp->rmr)
		return -1;

	return 0;
}