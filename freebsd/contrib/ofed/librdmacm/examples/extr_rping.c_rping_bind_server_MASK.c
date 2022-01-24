#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {scalar_t__ ss_family; } ;
struct rping_cb {int /*<<< orphan*/  cm_id; TYPE_1__ sin; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sockaddr*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct rping_cb *cb)
{
	int ret;

	if (cb->sin.ss_family == AF_INET)
		((struct sockaddr_in *) &cb->sin)->sin_port = cb->port;
	else
		((struct sockaddr_in6 *) &cb->sin)->sin6_port = cb->port;

	ret = FUNC2(cb->cm_id, (struct sockaddr *) &cb->sin);
	if (ret) {
		FUNC1("rdma_bind_addr");
		return ret;
	}
	FUNC0("rdma_bind_addr successful\n");

	FUNC0("rdma_listen\n");
	ret = FUNC3(cb->cm_id, 3);
	if (ret) {
		FUNC1("rdma_listen");
		return ret;
	}

	return 0;
}