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
struct upnp_wps_device_sm {int /*<<< orphan*/  msearch_replies; } ;
struct sockaddr_in {int dummy; } ;
struct advertisement_state_machine {int /*<<< orphan*/  list; int /*<<< orphan*/  client; scalar_t__ state; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int MAX_MSEARCH ; 
 int /*<<< orphan*/  MSEARCH_REPLY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct upnp_wps_device_sm*,struct advertisement_state_machine*) ; 
 scalar_t__ FUNC3 (int,int,int /*<<< orphan*/ ,struct upnp_wps_device_sm*,struct advertisement_state_machine*) ; 
 int /*<<< orphan*/  msearchreply_state_machine_handler ; 
 int /*<<< orphan*/  FUNC4 (struct advertisement_state_machine*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sockaddr_in*,int) ; 
 int FUNC6 () ; 
 struct advertisement_state_machine* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC9(struct upnp_wps_device_sm *sm,
					     struct sockaddr_in *client,
					     int mx)
{
	struct advertisement_state_machine *a;
	int next_timeout_sec;
	int next_timeout_msec;
	int replies;

	replies = FUNC1(&sm->msearch_replies);
	FUNC8(MSG_DEBUG, "WPS UPnP: M-SEARCH reply start (%d "
		   "outstanding)", replies);
	if (replies >= MAX_MSEARCH) {
		FUNC8(MSG_INFO, "WPS UPnP: Too many outstanding "
			   "M-SEARCH replies");
		return;
	}

	a = FUNC7(sizeof(*a));
	if (a == NULL)
		return;
	a->type = MSEARCH_REPLY;
	a->state = 0;
	FUNC5(&a->client, client, sizeof(*client));
	/* Wait time depending on MX value */
	next_timeout_msec = (1000 * mx * (FUNC6() & 0xFF)) >> 8;
	next_timeout_sec = next_timeout_msec / 1000;
	next_timeout_msec = next_timeout_msec % 1000;
	if (FUNC3(next_timeout_sec, next_timeout_msec,
				   msearchreply_state_machine_handler, sm,
				   a)) {
		/* No way to recover (from malloc failure) */
		goto fail;
	}
	/* Remember for future cleanup */
	FUNC0(&sm->msearch_replies, &a->list);
	return;

fail:
	FUNC8(MSG_INFO, "WPS UPnP: M-SEARCH reply failure!");
	FUNC2(msearchreply_state_machine_handler, sm, a);
	FUNC4(a);
}