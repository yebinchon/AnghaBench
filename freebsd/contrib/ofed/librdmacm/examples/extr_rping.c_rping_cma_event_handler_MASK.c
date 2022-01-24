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
struct rping_cb {int /*<<< orphan*/  sem; void* state; int /*<<< orphan*/  server; struct rdma_cm_id* child_cm_id; struct rdma_cm_id* cm_id; } ;
struct rdma_cm_id {struct rping_cb* context; } ;
struct rdma_cm_event {int event; int status; } ;

/* Variables and functions */
 void* ADDR_RESOLVED ; 
 void* CONNECTED ; 
 void* CONNECT_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 void* DISCONNECTED ; 
 void* ERROR ; 
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
 void* ROUTE_RESOLVED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (struct rdma_cm_id*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC6(struct rdma_cm_id *cma_id,
				    struct rdma_cm_event *event)
{
	int ret = 0;
	struct rping_cb *cb = cma_id->context;

	FUNC0("cma_event type %s cma_id %p (%s)\n",
		  FUNC3(event->event), cma_id,
		  (cma_id == cb->cm_id) ? "parent" : "child");

	switch (event->event) {
	case RDMA_CM_EVENT_ADDR_RESOLVED:
		cb->state = ADDR_RESOLVED;
		ret = FUNC4(cma_id, 2000);
		if (ret) {
			cb->state = ERROR;
			FUNC2("rdma_resolve_route");
			FUNC5(&cb->sem);
		}
		break;

	case RDMA_CM_EVENT_ROUTE_RESOLVED:
		cb->state = ROUTE_RESOLVED;
		FUNC5(&cb->sem);
		break;

	case RDMA_CM_EVENT_CONNECT_REQUEST:
		cb->state = CONNECT_REQUEST;
		cb->child_cm_id = cma_id;
		FUNC0("child cma %p\n", cb->child_cm_id);
		FUNC5(&cb->sem);
		break;

	case RDMA_CM_EVENT_ESTABLISHED:
		FUNC0("ESTABLISHED\n");

		/*
		 * Server will wake up when first RECV completes.
		 */
		if (!cb->server) {
			cb->state = CONNECTED;
		}
		FUNC5(&cb->sem);
		break;

	case RDMA_CM_EVENT_ADDR_ERROR:
	case RDMA_CM_EVENT_ROUTE_ERROR:
	case RDMA_CM_EVENT_CONNECT_ERROR:
	case RDMA_CM_EVENT_UNREACHABLE:
	case RDMA_CM_EVENT_REJECTED:
		FUNC1(stderr, "cma event %s, error %d\n",
			FUNC3(event->event), event->status);
		FUNC5(&cb->sem);
		ret = -1;
		break;

	case RDMA_CM_EVENT_DISCONNECTED:
		FUNC1(stderr, "%s DISCONNECT EVENT...\n",
			cb->server ? "server" : "client");
		cb->state = DISCONNECTED;
		FUNC5(&cb->sem);
		break;

	case RDMA_CM_EVENT_DEVICE_REMOVAL:
		FUNC1(stderr, "cma detected device removal!!!!\n");
		cb->state = ERROR;
		FUNC5(&cb->sem);
		ret = -1;
		break;

	default:
		FUNC1(stderr, "unhandled event: %s, ignoring\n",
			FUNC3(event->event));
		break;
	}

	return ret;
}