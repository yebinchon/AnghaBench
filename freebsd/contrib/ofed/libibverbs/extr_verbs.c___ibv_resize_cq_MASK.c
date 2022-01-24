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
struct ibv_cq {TYPE_2__* context; } ;
struct TYPE_3__ {int (* resize_cq ) (struct ibv_cq*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int ENOSYS ; 
 int FUNC0 (struct ibv_cq*,int) ; 

int FUNC1(struct ibv_cq *cq, int cqe)
{
	if (!cq->context->ops.resize_cq)
		return ENOSYS;

	return cq->context->ops.resize_cq(cq, cqe);
}