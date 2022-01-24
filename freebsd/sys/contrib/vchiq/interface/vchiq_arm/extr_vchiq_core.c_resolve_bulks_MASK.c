#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  bulk_transfer_mutex; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ VCHIQ_STATE_T ;
struct TYPE_12__ {int /*<<< orphan*/  fourcc; } ;
struct TYPE_16__ {scalar_t__ process; scalar_t__ remote_insert; scalar_t__ local_insert; TYPE_4__* bulks; } ;
struct TYPE_14__ {int /*<<< orphan*/  remoteport; TYPE_1__ base; TYPE_5__ bulk_tx; int /*<<< orphan*/  localport; TYPE_2__* state; } ;
typedef  TYPE_3__ VCHIQ_SERVICE_T ;
struct TYPE_15__ {scalar_t__ actual; scalar_t__ remote_data; scalar_t__ data; int /*<<< orphan*/  remote_size; int /*<<< orphan*/  size; } ;
typedef  TYPE_4__ VCHIQ_BULK_T ;
typedef  TYPE_5__ VCHIQ_BULK_QUEUE_T ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ VCHIQ_BULK_ACTUAL_ABORTED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCHIQ_LOG_INFO ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 

__attribute__((used)) static int
FUNC11(VCHIQ_SERVICE_T *service, VCHIQ_BULK_QUEUE_T *queue)
{
	VCHIQ_STATE_T *state = service->state;
	int resolved = 0;
	int rc;

	while ((queue->process != queue->local_insert) &&
		(queue->process != queue->remote_insert)) {
		VCHIQ_BULK_T *bulk = &queue->bulks[FUNC0(queue->process)];

		FUNC9(vchiq_core_log_level,
			"%d: rb:%d %cx - li=%x ri=%x p=%x",
			state->id, service->localport,
			(queue == &service->bulk_tx) ? 't' : 'r',
			queue->local_insert, queue->remote_insert,
			queue->process);

		FUNC4(!((int)(queue->local_insert - queue->process) > 0));
		FUNC4(!((int)(queue->remote_insert - queue->process) > 0));

		rc = FUNC5(&state->bulk_transfer_mutex);
		if (rc != 0)
			break;

		FUNC10(bulk);
		FUNC6(&state->bulk_transfer_mutex);

		if (FUNC1(service, VCHIQ_LOG_INFO)) {
			const char *header = (queue == &service->bulk_tx) ?
				"Send Bulk to" : "Recv Bulk from";
			if (bulk->actual != VCHIQ_BULK_ACTUAL_ABORTED)
				FUNC8(FUNC2(service),
					"%s %c%c%c%c d:%d len:%d %x<->%x",
					header,
					FUNC3(
						service->base.fourcc),
					service->remoteport,
					bulk->size,
					(unsigned int)bulk->data,
					(unsigned int)bulk->remote_data);
			else
				FUNC8(FUNC2(service),
					"%s %c%c%c%c d:%d ABORTED - tx len:%d,"
					" rx len:%d %x<->%x",
					header,
					FUNC3(
						service->base.fourcc),
					service->remoteport,
					bulk->size,
					bulk->remote_size,
					(unsigned int)bulk->data,
					(unsigned int)bulk->remote_data);
		}

		FUNC7(bulk);
		queue->process++;
		resolved++;
	}
	return resolved;
}