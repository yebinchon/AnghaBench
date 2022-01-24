#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {scalar_t__ ss_family; } ;
struct TYPE_3__ {scalar_t__ ss_family; } ;
struct rping_cb {scalar_t__ state; int /*<<< orphan*/  sem; TYPE_2__ sin; int /*<<< orphan*/  cm_id; TYPE_1__ ssource; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ROUTE_RESOLVED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct sockaddr*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(struct rping_cb *cb)
{
	int ret;

	if (cb->sin.ss_family == AF_INET)
		((struct sockaddr_in *) &cb->sin)->sin_port = cb->port;
	else
		((struct sockaddr_in6 *) &cb->sin)->sin6_port = cb->port;

	if (cb->ssource.ss_family) 
		ret = FUNC3(cb->cm_id, (struct sockaddr *) &cb->ssource,
					(struct sockaddr *) &cb->sin, 2000);
	else
		ret = FUNC3(cb->cm_id, NULL, (struct sockaddr *) &cb->sin, 2000);

	if (ret) {
		FUNC2("rdma_resolve_addr");
		return ret;
	}

	FUNC4(&cb->sem);
	if (cb->state != ROUTE_RESOLVED) {
		FUNC1(stderr, "waiting for addr/route resolution state %ld\n",
			cb->state);
		return -1;
	}

	FUNC0("rdma_resolve_addr - rdma_resolve_route successful\n");
	return 0;
}