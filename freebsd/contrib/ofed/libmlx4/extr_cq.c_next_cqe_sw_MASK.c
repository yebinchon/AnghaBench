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
struct mlx4_cq {int /*<<< orphan*/  cons_index; } ;

/* Variables and functions */
 struct mlx4_cqe* FUNC0 (struct mlx4_cq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlx4_cqe *FUNC1(struct mlx4_cq *cq)
{
	return FUNC0(cq, cq->cons_index);
}