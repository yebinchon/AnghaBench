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
struct mlx4_cqe {int dummy; } ;
struct mlx4_cq {int dummy; } ;
struct ibv_cq_ex {int dummy; } ;

/* Variables and functions */
 int CQ_EMPTY ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct ibv_cq_ex*) ; 
 int FUNC1 (struct mlx4_cq*,struct mlx4_cqe**) ; 
 int FUNC2 (struct mlx4_cq*,struct mlx4_cqe*) ; 
 struct mlx4_cq* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ibv_cq_ex *ibcq)
{
	struct mlx4_cq *cq = FUNC3(FUNC0(ibcq));
	struct mlx4_cqe *cqe;
	int err;

	err = FUNC1(cq, &cqe);
	if (err == CQ_EMPTY)
		return ENOENT;

	return FUNC2(cq, cqe);
}