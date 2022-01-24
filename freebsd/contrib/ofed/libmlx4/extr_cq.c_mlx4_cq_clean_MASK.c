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
struct mlx4_srq {int dummy; } ;
struct mlx4_cq {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_cq*,int /*<<< orphan*/ ,struct mlx4_srq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mlx4_cq *cq, uint32_t qpn, struct mlx4_srq *srq)
{
	FUNC1(&cq->lock);
	FUNC0(cq, qpn, srq);
	FUNC2(&cq->lock);
}