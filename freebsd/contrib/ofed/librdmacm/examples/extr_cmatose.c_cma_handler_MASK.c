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
struct rdma_cm_id {scalar_t__ context; } ;
struct rdma_cm_event {int event; int status; } ;
struct cmatest_node {int connected; } ;
struct TYPE_2__ {int /*<<< orphan*/  disconnects_left; int /*<<< orphan*/  connects_left; } ;

/* Variables and functions */
#define  RDMA_CM_EVENT_ADDR_ERROR 138 
#define  RDMA_CM_EVENT_ADDR_RESOLVED 137 
#define  RDMA_CM_EVENT_CONNECT_ERROR 136 
#define  RDMA_CM_EVENT_CONNECT_REQUEST 135 
#define  RDMA_CM_EVENT_DEVICE_REMOVAL 134 
#define  RDMA_CM_EVENT_DISCONNECTED 133 
#define  RDMA_CM_EVENT_ESTABLISHED 132 
#define  RDMA_CM_EVENT_REJECTED 131 
#define  RDMA_CM_EVENT_ROUTE_ERROR 130 
#define  RDMA_CM_EVENT_ROUTE_RESOLVED 129 
#define  RDMA_CM_EVENT_UNREACHABLE 128 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_cm_id*) ; 
 char* FUNC5 (int) ; 
 int FUNC6 (scalar_t__) ; 
 TYPE_1__ test ; 

__attribute__((used)) static int FUNC7(struct rdma_cm_id *cma_id, struct rdma_cm_event *event)
{
	int ret = 0;

	switch (event->event) {
	case RDMA_CM_EVENT_ADDR_RESOLVED:
		ret = FUNC0(cma_id->context);
		break;
	case RDMA_CM_EVENT_ROUTE_RESOLVED:
		ret = FUNC6(cma_id->context);
		break;
	case RDMA_CM_EVENT_CONNECT_REQUEST:
		ret = FUNC2(cma_id);
		break;
	case RDMA_CM_EVENT_ESTABLISHED:
		((struct cmatest_node *) cma_id->context)->connected = 1;
		test.connects_left--;
		test.disconnects_left++;
		break;
	case RDMA_CM_EVENT_ADDR_ERROR:
	case RDMA_CM_EVENT_ROUTE_ERROR:
	case RDMA_CM_EVENT_CONNECT_ERROR:
	case RDMA_CM_EVENT_UNREACHABLE:
	case RDMA_CM_EVENT_REJECTED:
		FUNC3("cmatose: event: %s, error: %d\n",
		       FUNC5(event->event), event->status);
		FUNC1();
		ret = event->status;
		break;
	case RDMA_CM_EVENT_DISCONNECTED:
		FUNC4(cma_id);
		test.disconnects_left--;
		break;
	case RDMA_CM_EVENT_DEVICE_REMOVAL:
		/* Cleanup will occur after test completes. */
		break;
	default:
		break;
	}
	return ret;
}