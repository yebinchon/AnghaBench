#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  sa_family; } ;
struct TYPE_5__ {int /*<<< orphan*/  dst_addr; TYPE_1__ src_addr; } ;
struct TYPE_6__ {TYPE_2__ addr; } ;
struct rdma_cm_id {TYPE_3__ route; } ;
struct rdma_addrinfo {scalar_t__ ai_route_len; int /*<<< orphan*/  ai_route; int /*<<< orphan*/ * ai_dst_addr; void* ai_dst_len; TYPE_1__* ai_src_addr; void* ai_src_len; int /*<<< orphan*/  ai_family; int /*<<< orphan*/  ai_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RAI_ROUTEONLY ; 
 int /*<<< orphan*/  RDMA_OPTION_IB ; 
 int /*<<< orphan*/  RDMA_OPTION_IB_PATH ; 
 int /*<<< orphan*/  FUNC0 (struct rdma_addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_addrinfo*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rdma_addrinfo*,struct rdma_addrinfo**) ; 
 int FUNC3 (struct rdma_cm_id*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC4 (struct sockaddr*) ; 

__attribute__((used)) static int FUNC5(struct rdma_cm_id *id)
{
	struct rdma_addrinfo hint, *rai;
	int ret;

	FUNC0(&hint, 0, sizeof hint);
	hint.ai_flags = RAI_ROUTEONLY;
	hint.ai_family = id->route.addr.src_addr.sa_family;
	hint.ai_src_len = FUNC4((struct sockaddr *) &id->route.addr.src_addr);
	hint.ai_src_addr = &id->route.addr.src_addr;
	hint.ai_dst_len = FUNC4((struct sockaddr *) &id->route.addr.dst_addr);
	hint.ai_dst_addr = &id->route.addr.dst_addr;

	ret = FUNC2(NULL, NULL, &hint, &rai);
	if (ret)
		return ret;

	if (rai->ai_route_len)
		ret = FUNC3(id, RDMA_OPTION_IB, RDMA_OPTION_IB_PATH,
				      rai->ai_route, rai->ai_route_len);
	else
		ret = -1;

	FUNC1(rai);
	return ret;
}