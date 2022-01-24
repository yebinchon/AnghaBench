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
struct rdma_cm_id {int /*<<< orphan*/  context; } ;
struct TYPE_2__ {int /*<<< orphan*/  ud; } ;
struct rdma_cm_event {int event; int status; TYPE_1__ param; } ;

/* Variables and functions */
#define  RDMA_CM_EVENT_ADDR_ERROR 133 
#define  RDMA_CM_EVENT_ADDR_RESOLVED 132 
#define  RDMA_CM_EVENT_DEVICE_REMOVAL 131 
#define  RDMA_CM_EVENT_MULTICAST_ERROR 130 
#define  RDMA_CM_EVENT_MULTICAST_JOIN 129 
#define  RDMA_CM_EVENT_ROUTE_ERROR 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct rdma_cm_id *cma_id, struct rdma_cm_event *event)
{
	int ret = 0;

	switch (event->event) {
	case RDMA_CM_EVENT_ADDR_RESOLVED:
		ret = FUNC0(cma_id->context);
		break;
	case RDMA_CM_EVENT_MULTICAST_JOIN:
		ret = FUNC2(cma_id->context, &event->param.ud);
		break;
	case RDMA_CM_EVENT_ADDR_ERROR:
	case RDMA_CM_EVENT_ROUTE_ERROR:
	case RDMA_CM_EVENT_MULTICAST_ERROR:
		FUNC3("mckey: event: %s, error: %d\n",
		       FUNC4(event->event), event->status);
		FUNC1();
		ret = event->status;
		break;
	case RDMA_CM_EVENT_DEVICE_REMOVAL:
		/* Cleanup will occur after test completes. */
		break;
	default:
		break;
	}
	return ret;
}