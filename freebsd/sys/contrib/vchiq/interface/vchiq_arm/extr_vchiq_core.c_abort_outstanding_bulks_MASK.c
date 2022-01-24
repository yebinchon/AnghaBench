#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  fourcc; } ;
struct TYPE_14__ {scalar_t__ process; scalar_t__ local_insert; scalar_t__ remote_insert; TYPE_4__* bulks; } ;
struct TYPE_12__ {int /*<<< orphan*/  remoteport; TYPE_2__ base; int /*<<< orphan*/  localport; TYPE_1__* state; TYPE_5__ bulk_tx; } ;
typedef  TYPE_3__ VCHIQ_SERVICE_T ;
struct TYPE_13__ {int /*<<< orphan*/  dir; int /*<<< orphan*/  actual; scalar_t__ size; int /*<<< orphan*/ * data; scalar_t__ remote_size; int /*<<< orphan*/ * remote_data; } ;
typedef  TYPE_4__ VCHIQ_BULK_T ;
typedef  TYPE_5__ VCHIQ_BULK_QUEUE_T ;
struct TYPE_10__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  VCHIQ_BULK_ACTUAL_ABORTED ; 
 int /*<<< orphan*/  VCHIQ_BULK_RECEIVE ; 
 int /*<<< orphan*/  VCHIQ_BULK_TRANSMIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(VCHIQ_SERVICE_T *service, VCHIQ_BULK_QUEUE_T *queue)
{
	int is_tx = (queue == &service->bulk_tx);
	FUNC6(vchiq_core_log_level,
		"%d: aob:%d %cx - li=%x ri=%x p=%x",
		service->state->id, service->localport, is_tx ? 't' : 'r',
		queue->local_insert, queue->remote_insert, queue->process);

	FUNC3(!((int)(queue->local_insert - queue->process) >= 0));
	FUNC3(!((int)(queue->remote_insert - queue->process) >= 0));

	while ((queue->process != queue->local_insert) ||
		(queue->process != queue->remote_insert)) {
		VCHIQ_BULK_T *bulk = &queue->bulks[FUNC0(queue->process)];

		if (queue->process == queue->remote_insert) {
			/* fabricate a matching dummy bulk */
			bulk->remote_data = NULL;
			bulk->remote_size = 0;
			queue->remote_insert++;
		}

		if (queue->process != queue->local_insert) {
			FUNC4(bulk);

			FUNC5(FUNC1(service),
				"%s %c%c%c%c d:%d ABORTED - tx len:%d, "
				"rx len:%d",
				is_tx ? "Send Bulk to" : "Recv Bulk from",
				FUNC2(service->base.fourcc),
				service->remoteport,
				bulk->size,
				bulk->remote_size);
		} else {
			/* fabricate a matching dummy bulk */
			bulk->data = NULL;
			bulk->size = 0;
			bulk->actual = VCHIQ_BULK_ACTUAL_ABORTED;
			bulk->dir = is_tx ? VCHIQ_BULK_TRANSMIT :
				VCHIQ_BULK_RECEIVE;
			queue->local_insert++;
		}

		queue->process++;
	}
}