#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct vchiq_open_payload {int member_1; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  payload ;
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_10__ {int /*<<< orphan*/  fourcc; } ;
struct TYPE_11__ {int client_id; scalar_t__ srvstate; int /*<<< orphan*/  ref_count; TYPE_7__* state; int /*<<< orphan*/  remove_event; int /*<<< orphan*/  localport; int /*<<< orphan*/  version_min; int /*<<< orphan*/  version; TYPE_1__ base; } ;
typedef  TYPE_2__ VCHIQ_SERVICE_T ;
struct TYPE_12__ {int member_1; struct vchiq_open_payload* member_0; } ;
typedef  TYPE_3__ VCHIQ_ELEMENT_T ;
struct TYPE_13__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  QMFLAGS_IS_BLOCKING ; 
 scalar_t__ VCHIQ_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCHIQ_MSG_OPEN ; 
 scalar_t__ VCHIQ_RETRY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ VCHIQ_SRVSTATE_CLOSEWAIT ; 
 scalar_t__ VCHIQ_SRVSTATE_OPEN ; 
 scalar_t__ VCHIQ_SRVSTATE_OPENSYNC ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  error_count ; 
 scalar_t__ FUNC3 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * srvstate_names ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

VCHIQ_STATUS_T
FUNC7(VCHIQ_SERVICE_T *service, int client_id)
{
	struct vchiq_open_payload payload = {
		service->base.fourcc,
		client_id,
		service->version,
		service->version_min
	};
	VCHIQ_ELEMENT_T body = { &payload, sizeof(payload) };
	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;

	service->client_id = client_id;
	FUNC6(service);
	status = FUNC3(service->state, NULL,
		FUNC0(VCHIQ_MSG_OPEN, service->localport, 0),
		&body, 1, sizeof(payload), QMFLAGS_IS_BLOCKING);
	if (status == VCHIQ_SUCCESS) {
		/* Wait for the ACK/NAK */
		if (FUNC2(&service->remove_event) != 0) {
			status = VCHIQ_RETRY;
			FUNC5(service);
		} else if ((service->srvstate != VCHIQ_SRVSTATE_OPEN) &&
			(service->srvstate != VCHIQ_SRVSTATE_OPENSYNC)) {
			if (service->srvstate != VCHIQ_SRVSTATE_CLOSEWAIT)
				FUNC4(vchiq_core_log_level,
					"%d: osi - srvstate = %s (ref %d)",
					service->state->id,
					srvstate_names[service->srvstate],
					service->ref_count);
			status = VCHIQ_ERROR;
			FUNC1(service, error_count);
			FUNC5(service);
		}
	}
	return status;
}