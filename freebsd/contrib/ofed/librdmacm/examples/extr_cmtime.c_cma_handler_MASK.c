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
struct rdma_cm_id {struct node* context; } ;
struct rdma_cm_event {int event; int status; } ;
struct node {int error; int /*<<< orphan*/  id; int /*<<< orphan*/  retries; } ;
struct list_head {struct rdma_cm_id* id; } ;
struct TYPE_2__ {int /*<<< orphan*/  ai_dst_addr; int /*<<< orphan*/  ai_src_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
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
 int /*<<< orphan*/  FUNC1 (struct node*) ; 
 int /*<<< orphan*/  FUNC2 (struct node*) ; 
 int /*<<< orphan*/  FUNC3 (struct node*) ; 
 int /*<<< orphan*/  disc_work ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 struct list_head* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 TYPE_1__* rai ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_cm_event*) ; 
 int /*<<< orphan*/  FUNC9 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  FUNC10 (struct rdma_cm_id*) ; 
 char* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct rdma_cm_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  req_work ; 
 int /*<<< orphan*/  FUNC15 (struct node*) ; 
 int /*<<< orphan*/  timeout ; 

__attribute__((used)) static void FUNC16(struct rdma_cm_id *id, struct rdma_cm_event *event)
{
	struct node *n = id->context;
	struct list_head *request;

	switch (event->event) {
	case RDMA_CM_EVENT_ADDR_RESOLVED:
		FUNC1(n);
		break;
	case RDMA_CM_EVENT_ROUTE_RESOLVED:
		FUNC15(n);
		break;
	case RDMA_CM_EVENT_CONNECT_REQUEST:
		request = FUNC5(sizeof *request);
		if (!request) {
			FUNC6("out of memory accepting connect request");
			FUNC12(id, NULL, 0);
			FUNC9(id);
		} else {
			FUNC0(request);
			request->id = id;
			FUNC4(&req_work, request);
		}
		break;
	case RDMA_CM_EVENT_ESTABLISHED:
		if (n)
			FUNC2(n);
		break;
	case RDMA_CM_EVENT_ADDR_ERROR:
		if (n->retries--) {
			if (!FUNC13(n->id, rai->ai_src_addr,
					       rai->ai_dst_addr, timeout))
				break;
		}
		FUNC7("RDMA_CM_EVENT_ADDR_ERROR, error: %d\n", event->status);
		FUNC1(n);
		n->error = 1;
		break;
	case RDMA_CM_EVENT_ROUTE_ERROR:
		if (n->retries--) {
			if (!FUNC14(n->id, timeout))
				break;
		}
		FUNC7("RDMA_CM_EVENT_ROUTE_ERROR, error: %d\n", event->status);
		FUNC15(n);
		n->error = 1;
		break;
	case RDMA_CM_EVENT_CONNECT_ERROR:
	case RDMA_CM_EVENT_UNREACHABLE:
	case RDMA_CM_EVENT_REJECTED:
		FUNC7("event: %s, error: %d\n",
		       FUNC11(event->event), event->status);
		FUNC2(n);
		n->error = 1;
		break;
	case RDMA_CM_EVENT_DISCONNECTED:
		if (!n) {
			request = FUNC5(sizeof *request);
			if (!request) {
				FUNC6("out of memory queueing disconnect request, handling synchronously");
				FUNC10(id);
				FUNC9(id);
			} else {
				FUNC0(request);
				request->id = id;
				FUNC4(&disc_work, request);
			}
		} else
			FUNC3(n);
		break;
	case RDMA_CM_EVENT_DEVICE_REMOVAL:
		/* Cleanup will occur after test completes. */
		break;
	default:
		break;
	}
	FUNC8(event);
}