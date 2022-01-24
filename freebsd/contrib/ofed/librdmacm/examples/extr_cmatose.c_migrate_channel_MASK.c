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
struct rdma_event_channel {int dummy; } ;
struct rdma_cm_id {int dummy; } ;
struct TYPE_4__ {struct rdma_event_channel* channel; TYPE_1__* nodes; } ;
struct TYPE_3__ {struct rdma_cm_id* cma_id; } ;

/* Variables and functions */
 int connections ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct rdma_event_channel* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_event_channel*) ; 
 int FUNC4 (struct rdma_cm_id*,struct rdma_event_channel*) ; 
 TYPE_2__ test ; 

__attribute__((used)) static int FUNC5(struct rdma_cm_id *listen_id)
{
	struct rdma_event_channel *channel;
	int i, ret;

	FUNC1("migrating to new event channel\n");

	channel = FUNC2();
	if (!channel) {
		FUNC0("cmatose: failed to create event channel");
		return -1;
	}

	ret = 0;
	if (listen_id)
		ret = FUNC4(listen_id, channel);

	for (i = 0; i < connections && !ret; i++)
		ret = FUNC4(test.nodes[i].cma_id, channel);

	if (!ret) {
		FUNC3(test.channel);
		test.channel = channel;
	} else
		FUNC0("cmatose: failure migrating to channel");

	return ret;
}