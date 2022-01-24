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
struct rdma_addrinfo {int ai_route_len; struct rdma_addrinfo* ai_next; void* ai_dst_canonname; void* ai_src_canonname; void* ai_route; int /*<<< orphan*/  ai_port_space; int /*<<< orphan*/  ai_qp_type; int /*<<< orphan*/  ai_family; int /*<<< orphan*/  ai_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_IB ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_addrinfo*) ; 
 void* FUNC3 (void*) ; 
 scalar_t__ FUNC4 (struct rdma_addrinfo*,struct rdma_addrinfo*) ; 
 scalar_t__ FUNC5 (struct rdma_addrinfo*,struct rdma_addrinfo*) ; 

__attribute__((used)) static void FUNC6(struct rdma_addrinfo **rai)
{
	struct rdma_addrinfo *ib_rai;

	ib_rai = FUNC0(1, sizeof(*ib_rai));
	if (!ib_rai)
		return;

	ib_rai->ai_flags = (*rai)->ai_flags;
	ib_rai->ai_family = AF_IB;
	ib_rai->ai_qp_type = (*rai)->ai_qp_type;
	ib_rai->ai_port_space = (*rai)->ai_port_space;

	ib_rai->ai_route = FUNC0(1, (*rai)->ai_route_len);
	if (!ib_rai->ai_route)
		goto err;

	FUNC1(ib_rai->ai_route, (*rai)->ai_route, (*rai)->ai_route_len);
	ib_rai->ai_route_len = (*rai)->ai_route_len;

	if ((*rai)->ai_src_canonname) {
		ib_rai->ai_src_canonname = FUNC3((*rai)->ai_src_canonname);
		if (!ib_rai->ai_src_canonname)
			goto err;
	}

	if ((*rai)->ai_dst_canonname) {
		ib_rai->ai_dst_canonname = FUNC3((*rai)->ai_dst_canonname);
		if (!ib_rai->ai_dst_canonname)
			goto err;
	}

	if (FUNC5(ib_rai, *rai))
		goto err;

	if (FUNC4(ib_rai, *rai))
		goto err;

	ib_rai->ai_next = *rai;
	*rai = ib_rai;
	return;

err:
	FUNC2(ib_rai);
}