#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_7__ {scalar_t__ public_fourcc; int srvstate; int service_use_count; int /*<<< orphan*/  remove_event; scalar_t__ closing; void* remoteport; scalar_t__ client_id; int /*<<< orphan*/  handle; int /*<<< orphan*/  auto_close; } ;
typedef  TYPE_1__ VCHIQ_SERVICE_T ;

/* Variables and functions */
 scalar_t__ VCHIQ_ERROR ; 
 scalar_t__ VCHIQ_FOURCC_INVALID ; 
 void* VCHIQ_PORT_FREE ; 
 scalar_t__ VCHIQ_RETRY ; 
 int /*<<< orphan*/  VCHIQ_SERVICE_CLOSED ; 
 scalar_t__ VCHIQ_SRVSTATE_CLOSED ; 
#define  VCHIQ_SRVSTATE_CLOSERECVD 131 
#define  VCHIQ_SRVSTATE_CLOSESENT 130 
 scalar_t__ VCHIQ_SRVSTATE_CLOSEWAIT ; 
#define  VCHIQ_SRVSTATE_LISTENING 129 
#define  VCHIQ_SRVSTATE_OPEN 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * srvstate_names ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static VCHIQ_STATUS_T
FUNC7(VCHIQ_SERVICE_T *service, int failstate)
{
	VCHIQ_STATUS_T status;
	int is_server = (service->public_fourcc != VCHIQ_FOURCC_INVALID);
	int newstate;

	switch (service->srvstate) {
	case VCHIQ_SRVSTATE_OPEN:
	case VCHIQ_SRVSTATE_CLOSESENT:
	case VCHIQ_SRVSTATE_CLOSERECVD:
		if (is_server) {
			if (service->auto_close) {
				service->client_id = 0;
				service->remoteport = VCHIQ_PORT_FREE;
				newstate = VCHIQ_SRVSTATE_LISTENING;
			} else
				newstate = VCHIQ_SRVSTATE_CLOSEWAIT;
		} else
			newstate = VCHIQ_SRVSTATE_CLOSED;
		FUNC6(service, newstate);
		break;
	case VCHIQ_SRVSTATE_LISTENING:
		break;
	default:
		FUNC4(vchiq_core_log_level,
			"close_service_complete(%x) called in state %s",
			service->handle, srvstate_names[service->srvstate]);
		FUNC0(1, "close_service_complete in unexpected state\n");
		return VCHIQ_ERROR;
	}

	status = FUNC1(service,
		VCHIQ_SERVICE_CLOSED, NULL, NULL);

	if (status != VCHIQ_RETRY) {
		int uc = service->service_use_count;
		int i;
		/* Complete the close process */
		for (i = 0; i < uc; i++)
			/* cater for cases where close is forced and the
			** client may not close all it's handles */
			FUNC5(service);

		service->client_id = 0;
		service->remoteport = VCHIQ_PORT_FREE;

		if (service->srvstate == VCHIQ_SRVSTATE_CLOSED)
			FUNC3(service);
		else if (service->srvstate != VCHIQ_SRVSTATE_CLOSEWAIT) {
			if (is_server)
				service->closing = 0;

			FUNC2(&service->remove_event);
		}
	} else
		FUNC6(service, failstate);

	return status;
}