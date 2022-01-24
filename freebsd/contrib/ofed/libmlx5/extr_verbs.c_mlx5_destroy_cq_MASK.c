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
struct ibv_cq {int /*<<< orphan*/  context; } ;
struct TYPE_3__ {int /*<<< orphan*/  active_buf; int /*<<< orphan*/  dbrec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct ibv_cq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct ibv_cq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct ibv_cq *cq)
{
	int ret;

	ret = FUNC1(cq);
	if (ret)
		return ret;

	FUNC3(FUNC5(cq->context), FUNC4(cq)->dbrec);
	FUNC2(FUNC5(cq->context), FUNC4(cq)->active_buf);
	FUNC0(FUNC4(cq));

	return 0;
}