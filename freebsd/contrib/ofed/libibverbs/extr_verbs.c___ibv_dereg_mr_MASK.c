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
struct ibv_mr {size_t length; TYPE_2__* context; void* addr; } ;
struct TYPE_3__ {int (* dereg_mr ) (struct ibv_mr*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 int FUNC1 (struct ibv_mr*) ; 

int FUNC2(struct ibv_mr *mr)
{
	int ret;
	void *addr	= mr->addr;
	size_t length	= mr->length;

	ret = mr->context->ops.dereg_mr(mr);
	if (!ret)
		FUNC0(addr, length);

	return ret;
}