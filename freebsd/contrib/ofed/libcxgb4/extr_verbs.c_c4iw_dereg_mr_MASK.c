#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ibv_mr {int /*<<< orphan*/  lkey; TYPE_2__* pd; } ;
struct c4iw_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/ ** mmid2ptr; } ;
struct TYPE_4__ {TYPE_1__* context; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ibv_mr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct c4iw_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ibv_mr*) ; 

int FUNC7(struct ibv_mr *mr)
{
	int ret;
	struct c4iw_dev *dev = FUNC5(mr->pd->context->device);

	ret = FUNC2(mr);
	if (ret)
		return ret;

	FUNC3(&dev->lock);
	dev->mmid2ptr[FUNC0(mr->lkey)] = NULL;
	FUNC4(&dev->lock);

	FUNC1(FUNC6(mr));

	return 0;
}