#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {int p2p_go_group_formation_completed; TYPE_2__* global; scalar_t__ p2p_in_invitation; scalar_t__ p2p_in_provisioning; int /*<<< orphan*/  group_formation_reported; int /*<<< orphan*/  p2pdev; } ;
struct TYPE_3__ {scalar_t__ sec; } ;
struct TYPE_4__ {TYPE_1__ p2p_go_wait_client; int /*<<< orphan*/ * p2p_group_formation; scalar_t__ p2p; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  wpas_p2p_group_formation_timeout ; 

void FUNC6(struct wpa_supplicant *wpa_s,
				       const u8 *addr)
{
	if (FUNC0(wpas_p2p_group_formation_timeout,
				 wpa_s->p2pdev, NULL) > 0) {
		/*
		 * This can happen if WPS provisioning step is not terminated
		 * cleanly (e.g., P2P Client does not send WSC_Done). Since the
		 * peer was able to connect, there is no need to time out group
		 * formation after this, though. In addition, this is used with
		 * the initial connection wait on the GO as a separate formation
		 * timeout and as such, expected to be hit after the initial WPS
		 * provisioning step.
		 */
		FUNC3(MSG_DEBUG, "P2P: Canceled P2P group formation timeout on data connection");

		if (!wpa_s->p2p_go_group_formation_completed &&
		    !wpa_s->group_formation_reported) {
			/*
			 * GO has not yet notified group formation success since
			 * the WPS step was not completed cleanly. Do that
			 * notification now since the P2P Client was able to
			 * connect and as such, must have received the
			 * credential from the WPS step.
			 */
			if (wpa_s->global->p2p)
				FUNC1(wpa_s->global->p2p, addr);
			FUNC4(wpa_s, 1, 0);
		}
	}
	if (!wpa_s->p2p_go_group_formation_completed) {
		FUNC2(wpa_s, MSG_DEBUG, "P2P: Marking group formation completed on GO on first data connection");
		wpa_s->p2p_go_group_formation_completed = 1;
		wpa_s->global->p2p_group_formation = NULL;
		wpa_s->p2p_in_provisioning = 0;
		wpa_s->p2p_in_invitation = 0;
	}
	wpa_s->global->p2p_go_wait_client.sec = 0;
	if (addr == NULL)
		return;
	FUNC5(wpa_s, addr);
}