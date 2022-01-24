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
struct mlx5_mr {int dummy; } ;
struct ibv_mr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_mr*) ; 
 int FUNC1 (struct ibv_mr*) ; 
 struct mlx5_mr* FUNC2 (struct ibv_mr*) ; 

int FUNC3(struct ibv_mr *ibmr)
{
	int ret;
	struct mlx5_mr *mr = FUNC2(ibmr);

	ret = FUNC1(ibmr);
	if (ret)
		return ret;

	FUNC0(mr);
	return 0;
}