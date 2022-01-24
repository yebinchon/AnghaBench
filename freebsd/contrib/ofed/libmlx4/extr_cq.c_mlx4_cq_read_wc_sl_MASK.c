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
typedef  int uint8_t ;
struct mlx4_cq {TYPE_2__* cqe; TYPE_1__* cur_qp; } ;
struct ibv_cq_ex {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  sl_vid; } ;
struct TYPE_3__ {scalar_t__ link_layer; } ;

/* Variables and functions */
 scalar_t__ IBV_LINK_LAYER_ETHERNET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_cq_ex*) ; 
 struct mlx4_cq* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t FUNC3(struct ibv_cq_ex *ibcq)
{
	struct mlx4_cq *cq = FUNC2(FUNC1(ibcq));

	if ((cq->cur_qp) && (cq->cur_qp->link_layer == IBV_LINK_LAYER_ETHERNET))
		return FUNC0(cq->cqe->sl_vid) >> 13;
	else
		return FUNC0(cq->cqe->sl_vid) >> 12;
}