#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  rsn; } ;
struct mlx5_rwq {int /*<<< orphan*/  db; TYPE_1__ rsc; } ;
struct ibv_wq {int /*<<< orphan*/  context; int /*<<< orphan*/  cq; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_rwq*) ; 
 int FUNC2 (struct ibv_wq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_rwq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct mlx5_rwq* FUNC10 (struct ibv_wq*) ; 

int FUNC11(struct ibv_wq *wq)
{
	struct mlx5_rwq *rwq = FUNC10(wq);
	int ret;

	ret = FUNC2(wq);
	if (ret)
		return ret;

	FUNC6(&FUNC8(wq->cq)->lock);
	FUNC0(FUNC8(wq->cq), rwq->rsc.rsn, NULL);
	FUNC7(&FUNC8(wq->cq)->lock);
	FUNC3(FUNC9(wq->context), rwq->rsc.rsn);
	FUNC4(FUNC9(wq->context), rwq->db);
	FUNC5(rwq, wq->context);
	FUNC1(rwq);

	return 0;
}