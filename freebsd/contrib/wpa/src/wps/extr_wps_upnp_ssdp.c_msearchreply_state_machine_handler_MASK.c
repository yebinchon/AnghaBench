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
struct wpabuf {int dummy; } ;
struct upnp_wps_device_sm {int /*<<< orphan*/  multicast_sd; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct advertisement_state_machine {int /*<<< orphan*/  state; TYPE_1__ client; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (int,int,void (*) (void*,void*),struct upnp_wps_device_sm*,struct advertisement_state_machine*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct advertisement_state_machine*) ; 
 struct wpabuf* FUNC3 (struct upnp_wps_device_sm*,struct advertisement_state_machine*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*) ; 

__attribute__((used)) static void FUNC11(void *eloop_data,
					       void *user_ctx)
{
	struct advertisement_state_machine *a = user_ctx;
	struct upnp_wps_device_sm *sm = eloop_data;
	struct wpabuf *msg;
	int next_timeout_msec = 100;
	int next_timeout_sec = 0;
	int islast = 0;

	/*
	 * Each response is sent twice (in case lost) w/ 100 msec delay
	 * between; spec says no more than 3 times.
	 * One pair for rootdevice, one pair for uuid, and a pair each for
	 * each of the two urns.
	 */

	/* TODO: should only send the requested response types */

	FUNC7(MSG_MSGDUMP, "WPS UPnP: M-SEARCH reply state=%d (%s:%d)",
		   a->state, FUNC1(a->client.sin_addr),
		   FUNC4(a->client.sin_port));
	msg = FUNC3(sm, a, &islast);
	if (msg == NULL)
		return;

	/*
	 * Send it on the multicast socket to avoid having to set up another
	 * socket.
	 */
	if (FUNC5(sm->multicast_sd, FUNC9(msg), FUNC10(msg), 0,
		   (struct sockaddr *) &a->client, sizeof(a->client)) < 0) {
		FUNC7(MSG_DEBUG, "WPS UPnP: M-SEARCH reply sendto "
			   "errno %d (%s) for %s:%d",
			   errno, FUNC6(errno),
			   FUNC1(a->client.sin_addr),
			   FUNC4(a->client.sin_port));
		/* Ignore error and hope for the best */
	}
	FUNC8(msg);
	if (islast) {
		FUNC7(MSG_DEBUG, "WPS UPnP: M-SEARCH reply done");
		FUNC2(a);
		return;
	}
	a->state++;

	FUNC7(MSG_MSGDUMP, "WPS UPnP: M-SEARCH reply in %d.%03d sec",
		   next_timeout_sec, next_timeout_msec);
	FUNC0(next_timeout_sec, next_timeout_msec,
			       msearchreply_state_machine_handler, sm, a);
}