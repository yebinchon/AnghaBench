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
struct ibv_srq {TYPE_2__* context; } ;
struct TYPE_3__ {int (* destroy_srq ) (struct ibv_srq*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int FUNC0 (struct ibv_srq*) ; 

int FUNC1(struct ibv_srq *srq)
{
	return srq->context->ops.destroy_srq(srq);
}