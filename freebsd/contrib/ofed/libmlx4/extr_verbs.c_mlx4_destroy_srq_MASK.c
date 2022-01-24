#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ibv_srq {int /*<<< orphan*/  context; } ;
struct TYPE_3__ {struct TYPE_3__* wrid; int /*<<< orphan*/  buf; int /*<<< orphan*/  db; scalar_t__ ext_srq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_DB_TYPE_RQ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct ibv_srq*) ; 
 int FUNC2 (struct ibv_srq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (struct ibv_srq*) ; 

int FUNC7(struct ibv_srq *srq)
{
	int ret;

	if (FUNC6(srq)->ext_srq)
		return FUNC2(srq);

	ret = FUNC1(srq);
	if (ret)
		return ret;

	FUNC4(FUNC5(srq->context), MLX4_DB_TYPE_RQ, FUNC6(srq)->db);
	FUNC3(&FUNC6(srq)->buf);
	FUNC0(FUNC6(srq)->wrid);
	FUNC0(FUNC6(srq));

	return 0;
}