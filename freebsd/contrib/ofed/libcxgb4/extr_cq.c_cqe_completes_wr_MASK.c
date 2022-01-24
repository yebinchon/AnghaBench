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
struct t4_wq {int dummy; } ;
struct t4_cqe {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct t4_cqe*) ; 
 scalar_t__ FUNC1 (struct t4_cqe*) ; 
 scalar_t__ FW_RI_RDMA_WRITE ; 
 scalar_t__ FW_RI_READ_RESP ; 
 scalar_t__ FW_RI_TERMINATE ; 
 scalar_t__ FUNC2 (struct t4_cqe*) ; 
 scalar_t__ FUNC3 (struct t4_cqe*) ; 
 scalar_t__ FUNC4 (struct t4_wq*) ; 

__attribute__((used)) static int FUNC5(struct t4_cqe *cqe, struct t4_wq *wq)
{
	if (FUNC0(cqe) == FW_RI_TERMINATE)
		return 0;

	if ((FUNC0(cqe) == FW_RI_RDMA_WRITE) && FUNC2(cqe))
		return 0;

	if ((FUNC0(cqe) == FW_RI_READ_RESP) && FUNC3(cqe))
		return 0;

	if (FUNC1(cqe) && FUNC2(cqe) && FUNC4(wq))
		return 0;
	return 1;
}