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
typedef  int /*<<< orphan*/  uint32_t ;
struct mlx5_srq {int /*<<< orphan*/  srqn; } ;
struct ibv_srq {int dummy; } ;

/* Variables and functions */
 struct mlx5_srq* FUNC0 (struct ibv_srq*) ; 

int FUNC1(struct ibv_srq *srq, uint32_t *srq_num)
{
	struct mlx5_srq *msrq = FUNC0(srq);

	*srq_num = msrq->srqn;

	return 0;
}