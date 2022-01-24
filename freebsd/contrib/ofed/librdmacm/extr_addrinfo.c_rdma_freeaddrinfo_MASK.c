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
struct rdma_addrinfo {struct rdma_addrinfo* ai_dst_addr; struct rdma_addrinfo* ai_src_addr; struct rdma_addrinfo* ai_dst_canonname; struct rdma_addrinfo* ai_src_canonname; struct rdma_addrinfo* ai_route; struct rdma_addrinfo* ai_connect; struct rdma_addrinfo* ai_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rdma_addrinfo*) ; 

void FUNC1(struct rdma_addrinfo *res)
{
	struct rdma_addrinfo *rai;

	while (res) {
		rai = res;
		res = res->ai_next;

		if (rai->ai_connect)
			FUNC0(rai->ai_connect);

		if (rai->ai_route)
			FUNC0(rai->ai_route);

		if (rai->ai_src_canonname)
			FUNC0(rai->ai_src_canonname);

		if (rai->ai_dst_canonname)
			FUNC0(rai->ai_dst_canonname);

		if (rai->ai_src_addr)
			FUNC0(rai->ai_src_addr);

		if (rai->ai_dst_addr)
			FUNC0(rai->ai_dst_addr);

		FUNC0(rai);
	}
}