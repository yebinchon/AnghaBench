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
typedef  int /*<<< orphan*/  uint64_t ;
struct mlx5_cq {TYPE_1__* cqe64; } ;
struct ibv_cq_ex {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  timestamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_cq_ex*) ; 
 struct mlx5_cq* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline uint64_t FUNC3(struct ibv_cq_ex *ibcq)
{
	struct mlx5_cq *cq = FUNC2(FUNC1(ibcq));

	return FUNC0(cq->cqe64->timestamp);
}