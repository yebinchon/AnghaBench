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
struct sockaddr {int dummy; } ;
struct rdma_cm_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rdma_cm_id*,struct sockaddr*,int,void*) ; 
 int FUNC2 (struct sockaddr*) ; 

int FUNC3(struct rdma_cm_id *id, struct sockaddr *addr,
			void *context)
{
	int addrlen;
	
	addrlen = FUNC2(addr);
	if (!addrlen)
		return FUNC0(EINVAL);

	return FUNC1(id, addr, addrlen, context);
}