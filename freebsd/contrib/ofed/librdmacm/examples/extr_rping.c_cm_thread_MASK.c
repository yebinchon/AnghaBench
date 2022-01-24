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
struct rping_cb {int /*<<< orphan*/  cm_channel; } ;
struct rdma_cm_event {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_cm_event*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct rdma_cm_event**) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct rdma_cm_event*) ; 

__attribute__((used)) static void *FUNC5(void *arg)
{
	struct rping_cb *cb = arg;
	struct rdma_cm_event *event;
	int ret;

	while (1) {
		ret = FUNC3(cb->cm_channel, &event);
		if (ret) {
			FUNC1("rdma_get_cm_event");
			FUNC0(ret);
		}
		ret = FUNC4(event->id, event);
		FUNC2(event);
		if (ret)
			FUNC0(ret);
	}
}