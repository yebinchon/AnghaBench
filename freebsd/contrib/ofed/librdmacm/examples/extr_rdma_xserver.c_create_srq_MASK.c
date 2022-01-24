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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int max_wr; int max_sge; scalar_t__ srq_limit; } ;
struct ibv_srq_init_attr {TYPE_2__* srq_context; TYPE_1__ attr; } ;
struct TYPE_5__ {scalar_t__ srq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_2__* id ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,struct ibv_srq_init_attr*) ; 
 int /*<<< orphan*/  srqn ; 

__attribute__((used)) static int FUNC4(void)
{
	struct ibv_srq_init_attr attr;
	int ret;
	uint32_t tmp_srqn;

	attr.attr.max_wr = 1;
	attr.attr.max_sge = 1;
	attr.attr.srq_limit = 0;
	attr.srq_context = id;

	ret = FUNC3(id, NULL, &attr);
	if (ret)
		FUNC2("rdma_create_srq:");

	if (id->srq) {
		FUNC1(id->srq, &tmp_srqn);
		srqn = FUNC0(tmp_srqn);
	}
	return ret;
}