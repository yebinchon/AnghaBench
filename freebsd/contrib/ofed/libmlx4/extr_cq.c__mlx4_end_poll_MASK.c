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
struct mlx4_cq {int /*<<< orphan*/  lock; } ;
struct ibv_cq_ex {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibv_cq_ex*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_cq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mlx4_cq* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct ibv_cq_ex *ibcq, int lock)
{
	struct mlx4_cq *cq = FUNC3(FUNC0(ibcq));

	FUNC1(cq);

	if (lock)
		FUNC2(&cq->lock);
}