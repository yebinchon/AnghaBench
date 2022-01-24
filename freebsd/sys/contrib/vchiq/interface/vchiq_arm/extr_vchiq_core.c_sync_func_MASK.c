#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct vchiq_openack_payload {int /*<<< orphan*/  version; } ;
struct TYPE_18__ {int /*<<< orphan*/  id; TYPE_1__* remote; TYPE_4__* local; } ;
typedef  TYPE_3__ VCHIQ_STATE_T ;
struct TYPE_19__ {int /*<<< orphan*/  sync_trigger; } ;
typedef  TYPE_4__ VCHIQ_SHARED_STATE_T ;
struct TYPE_17__ {int fourcc; } ;
struct TYPE_20__ {unsigned int remoteport; int sync; int /*<<< orphan*/  srvstate; int /*<<< orphan*/  remove_event; int /*<<< orphan*/  peer_version; TYPE_2__ base; } ;
typedef  TYPE_5__ VCHIQ_SERVICE_T ;
struct TYPE_21__ {int msgid; int size; scalar_t__ data; } ;
typedef  TYPE_6__ VCHIQ_HEADER_T ;
struct TYPE_16__ {int /*<<< orphan*/  slot_sync; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int) ; 
 scalar_t__ VCHIQ_LOG_TRACE ; 
 int FUNC2 (char,char,char,char) ; 
 int /*<<< orphan*/  VCHIQ_MESSAGE_AVAILABLE ; 
#define  VCHIQ_MSG_DATA 129 
 unsigned int FUNC3 (int) ; 
#define  VCHIQ_MSG_OPENACK 128 
 unsigned int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  VCHIQ_RETRY ; 
 int /*<<< orphan*/  VCHIQ_SRVSTATE_OPENING ; 
 int /*<<< orphan*/  VCHIQ_SRVSTATE_OPENSYNC ; 
 TYPE_5__* FUNC6 (TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,char*,int /*<<< orphan*/ ,unsigned int,int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,char*,int /*<<< orphan*/ ,unsigned int,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ vchiq_sync_log_level ; 

int
FUNC20(void *v)
{
	VCHIQ_STATE_T *state = (VCHIQ_STATE_T *) v;
	VCHIQ_SHARED_STATE_T *local = state->local;
	VCHIQ_HEADER_T *header = (VCHIQ_HEADER_T *)FUNC0(state,
		state->remote->slot_sync);

	while (1) {
		VCHIQ_SERVICE_T *service;
		int msgid, size;
		int type;
		unsigned int localport, remoteport;

		FUNC11(&local->sync_trigger);

		FUNC12();

		msgid = header->msgid;
		size = header->size;
		type = FUNC5(msgid);
		localport = FUNC3(msgid);
		remoteport = FUNC4(msgid);

		service = FUNC6(state, localport);

		if (!service) {
			FUNC16(vchiq_sync_log_level,
				"%d: sf %s@%x (%d->%d) - "
				"invalid/closed service %d",
				state->id, FUNC9(type),
				(unsigned int)header,
				remoteport, localport, localport);
			FUNC10(state, header);
			continue;
		}

		if (vchiq_sync_log_level >= VCHIQ_LOG_TRACE) {
			int svc_fourcc;

			svc_fourcc = service
				? service->base.fourcc
				: FUNC2('?', '?', '?', '?');
			FUNC18(vchiq_sync_log_level,
				"Rcvd Msg %s from %c%c%c%c s:%d d:%d len:%d",
				FUNC9(type),
				FUNC1(svc_fourcc),
				remoteport, localport, size);
			if (size > 0)
				FUNC15("Rcvd", 0, header->data,
					FUNC8(16, size));
		}

		switch (type) {
		case VCHIQ_MSG_OPENACK:
			if (size >= sizeof(struct vchiq_openack_payload)) {
				const struct vchiq_openack_payload *payload =
					(struct vchiq_openack_payload *)
					header->data;
				service->peer_version = payload->version;
			}
			FUNC17(vchiq_sync_log_level,
				"%d: sf OPENACK@%x,%x (%d->%d) v:%d",
				state->id, (unsigned int)header, size,
				remoteport, localport, service->peer_version);
			if (service->srvstate == VCHIQ_SRVSTATE_OPENING) {
				service->remoteport = remoteport;
				FUNC19(service,
					VCHIQ_SRVSTATE_OPENSYNC);
				service->sync = 1;
				FUNC14(&service->remove_event);
			}
			FUNC10(state, header);
			break;

		case VCHIQ_MSG_DATA:
			FUNC18(vchiq_sync_log_level,
				"%d: sf DATA@%x,%x (%d->%d)",
				state->id, (unsigned int)header, size,
				remoteport, localport);

			if ((service->remoteport == remoteport) &&
				(service->srvstate ==
				VCHIQ_SRVSTATE_OPENSYNC)) {
				if (FUNC7(service,
					VCHIQ_MESSAGE_AVAILABLE, header,
					NULL) == VCHIQ_RETRY)
					FUNC16(vchiq_sync_log_level,
						"synchronous callback to "
						"service %d returns "
						"VCHIQ_RETRY",
						localport);
			}
			break;

		default:
			FUNC16(vchiq_sync_log_level,
				"%d: sf unexpected msgid %x@%x,%x",
				state->id, msgid, (unsigned int)header, size);
			FUNC10(state, header);
			break;
		}

		FUNC13(service);
	}

	return 0;
}