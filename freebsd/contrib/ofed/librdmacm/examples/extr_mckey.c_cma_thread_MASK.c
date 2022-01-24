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
struct rdma_cm_event {int event; int status; } ;
struct TYPE_2__ {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
#define  RDMA_CM_EVENT_ADDR_CHANGE 129 
#define  RDMA_CM_EVENT_MULTICAST_ERROR 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_cm_event*) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct rdma_cm_event**) ; 
 TYPE_1__ test ; 

__attribute__((used)) static void *FUNC5(void *arg)
{
	struct rdma_cm_event *event;
	int ret;

	while (1) {
		ret = FUNC4(test.channel, &event);
		if (ret) {
			FUNC0("rdma_get_cm_event");
			break;
		}

		switch (event->event) {
		case RDMA_CM_EVENT_MULTICAST_ERROR:
		case RDMA_CM_EVENT_ADDR_CHANGE:
			FUNC1("mckey: event: %s, status: %d\n",
			       FUNC3(event->event), event->status);
			break;
		default:
			break;
		}

		FUNC2(event);
	}
	return NULL;
}