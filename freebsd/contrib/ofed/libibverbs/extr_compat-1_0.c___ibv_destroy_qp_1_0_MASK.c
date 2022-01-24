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
struct ibv_qp_1_0 {int /*<<< orphan*/  real_qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibv_qp_1_0*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct ibv_qp_1_0 *qp)
{
	int ret;

	ret = FUNC1(qp->real_qp);
	if (ret)
		return ret;

	FUNC0(qp);
	return 0;
}