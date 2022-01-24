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
struct sockaddr_ib {void* sib_sid_mask; void* sib_sid; int /*<<< orphan*/  sib_family; } ;
struct sockaddr {int dummy; } ;
struct rdma_cm_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_IB ; 
 int /*<<< orphan*/  RDMA_IB_IP_PS_MASK ; 
 int /*<<< orphan*/  RDMA_IB_IP_PS_TCP ; 
 int /*<<< orphan*/  RDMA_PS_IB ; 
 int af_ib_support ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_ib*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct rdma_cm_id*,struct sockaddr*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct rdma_cm_id**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_cm_id*) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct rdma_cm_id *id;
	struct sockaddr_ib sib;
	int ret;

	ret = FUNC3(NULL, &id, NULL, RDMA_PS_IB);
	if (ret)
		return;

	FUNC1(&sib, 0, sizeof sib);
	sib.sib_family = AF_IB;
	sib.sib_sid = FUNC0(RDMA_IB_IP_PS_TCP);
	sib.sib_sid_mask = FUNC0(RDMA_IB_IP_PS_MASK);
	af_ib_support = 1;
	ret = FUNC2(id, (struct sockaddr *) &sib);
	af_ib_support = !ret;

	FUNC4(id);
}