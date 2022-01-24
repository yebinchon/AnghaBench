#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ibv_recv_wr_1_0 {struct ibv_recv_wr_1_0* next; int /*<<< orphan*/  num_sge; int /*<<< orphan*/  sg_list; int /*<<< orphan*/  wr_id; } ;
struct ibv_recv_wr {struct ibv_recv_wr* next; int /*<<< orphan*/  num_sge; int /*<<< orphan*/  sg_list; int /*<<< orphan*/  wr_id; } ;
struct ibv_qp_1_0 {int /*<<< orphan*/  real_qp; TYPE_3__* context; } ;
struct TYPE_6__ {TYPE_2__* real_context; } ;
struct TYPE_4__ {int (* post_recv ) (int /*<<< orphan*/ ,struct ibv_recv_wr*,struct ibv_recv_wr**) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;

/* Variables and functions */
 struct ibv_recv_wr* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ibv_recv_wr*,struct ibv_recv_wr**) ; 

__attribute__((used)) static int FUNC2(struct ibv_qp_1_0 *qp, struct ibv_recv_wr_1_0 *wr,
				 struct ibv_recv_wr_1_0 **bad_wr)
{
	struct ibv_recv_wr_1_0 *w;
	struct ibv_recv_wr *real_wr, *head_wr = NULL, *tail_wr = NULL, *real_bad_wr;
	int ret;

	for (w = wr; w; w = w->next) {
		real_wr = FUNC0(sizeof *real_wr);
		real_wr->wr_id   = w->wr_id;
		real_wr->sg_list = w->sg_list;
		real_wr->num_sge = w->num_sge;
		real_wr->next    = NULL;
		if (tail_wr)
			tail_wr->next = real_wr;
		else
			head_wr = real_wr;

		tail_wr = real_wr;
	}

	ret = qp->context->real_context->ops.post_recv(qp->real_qp, head_wr,
						       &real_bad_wr);

	if (ret) {
		for (real_wr = head_wr, w = wr;
		     real_wr;
		     real_wr = real_wr->next, w = w->next)
			if (real_wr == real_bad_wr) {
				*bad_wr = w;
				break;
			}
	}

	return ret;
}