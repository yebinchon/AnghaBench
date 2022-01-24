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
typedef  int uint64_t ;
struct mlx4_cq {TYPE_1__* cqe; } ;
struct ibv_cq_ex {int dummy; } ;
struct TYPE_2__ {int ts_15_8; int ts_7_0; int /*<<< orphan*/  ts_47_16; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_cq_ex*) ; 
 struct mlx4_cq* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t FUNC3(struct ibv_cq_ex *ibcq)
{
	struct mlx4_cq *cq = FUNC2(FUNC1(ibcq));

	return ((uint64_t)FUNC0(cq->cqe->ts_47_16) << 16) |
			       (cq->cqe->ts_15_8   <<  8) |
			       (cq->cqe->ts_7_0);
}