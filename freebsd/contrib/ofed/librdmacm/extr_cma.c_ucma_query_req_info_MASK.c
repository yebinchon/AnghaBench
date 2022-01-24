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
struct rdma_cm_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  af_ib_support ; 
 int FUNC0 (struct rdma_cm_id*) ; 
 int FUNC1 (struct rdma_cm_id*) ; 
 int FUNC2 (struct rdma_cm_id*) ; 
 int FUNC3 (struct rdma_cm_id*) ; 

__attribute__((used)) static int FUNC4(struct rdma_cm_id *id)
{
	int ret;

	if (!af_ib_support)
		return FUNC3(id);

	ret = FUNC0(id);
	if (ret)
		return ret;

	ret = FUNC1(id);
	if (ret)
		return ret;

	ret = FUNC2(id);
	if (ret)
		return ret;

	return 0;
}