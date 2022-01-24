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
struct ibv_srq_init_attr {int /*<<< orphan*/  srq_context; } ;
struct ibv_srq {int /*<<< orphan*/  cond; int /*<<< orphan*/  mutex; scalar_t__ events_completed; struct ibv_pd* pd; int /*<<< orphan*/  srq_context; TYPE_2__* context; } ;
struct ibv_pd {TYPE_2__* context; } ;
struct TYPE_3__ {struct ibv_srq* (* create_srq ) (struct ibv_pd*,struct ibv_srq_init_attr*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ibv_srq* FUNC2 (struct ibv_pd*,struct ibv_srq_init_attr*) ; 

struct ibv_srq *FUNC3(struct ibv_pd *pd,
				 struct ibv_srq_init_attr *srq_init_attr)
{
	struct ibv_srq *srq;

	if (!pd->context->ops.create_srq)
		return NULL;

	srq = pd->context->ops.create_srq(pd, srq_init_attr);
	if (srq) {
		srq->context          = pd->context;
		srq->srq_context      = srq_init_attr->srq_context;
		srq->pd               = pd;
		srq->events_completed = 0;
		FUNC1(&srq->mutex, NULL);
		FUNC0(&srq->cond, NULL);
	}

	return srq;
}