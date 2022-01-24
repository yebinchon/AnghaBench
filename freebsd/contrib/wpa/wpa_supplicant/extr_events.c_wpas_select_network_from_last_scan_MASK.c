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
struct wpa_supplicant {scalar_t__ wpa_state; int own_disconnect_req; int scan_interval; int network_select; int auto_network_select; scalar_t__ after_wps; scalar_t__ owe_transition_search; TYPE_1__* conf; scalar_t__ p2p_in_invitation; scalar_t__ show_group_started; scalar_t__ p2p_in_provisioning; struct wpa_ssid* current_ssid; scalar_t__ ifmsh; scalar_t__ p2p_mgmt; } ;
struct wpa_ssid {int dummy; } ;
struct wpa_bss {int dummy; } ;
struct TYPE_2__ {scalar_t__ cred; scalar_t__ interworking; scalar_t__ auto_interworking; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 scalar_t__ WPA_AUTHENTICATING ; 
 int /*<<< orphan*/  WPA_EVENT_NETWORK_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*,int /*<<< orphan*/ *,struct wpa_ssid*) ; 
 scalar_t__ FUNC7 (struct wpa_supplicant*,struct wpa_bss*,struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_supplicant*,struct wpa_bss*,struct wpa_ssid*) ; 
 struct wpa_bss* FUNC10 (struct wpa_supplicant*,struct wpa_ssid**) ; 
 struct wpa_ssid* FUNC11 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpa_supplicant*,int,int) ; 
 scalar_t__ FUNC13 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC14 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  wpas_network_reenabled ; 
 int FUNC15 (struct wpa_supplicant*) ; 
 int FUNC16 (struct wpa_supplicant*) ; 
 scalar_t__ FUNC17 (struct wpa_supplicant*) ; 

__attribute__((used)) static int FUNC18(struct wpa_supplicant *wpa_s,
					      int new_scan, int own_request)
{
	struct wpa_bss *selected;
	struct wpa_ssid *ssid = NULL;
	int time_to_reenable = FUNC16(wpa_s);

	if (time_to_reenable > 0) {
		FUNC3(wpa_s, MSG_DEBUG,
			"Postpone network selection by %d seconds since all networks are disabled",
			time_to_reenable);
		FUNC0(wpas_network_reenabled, wpa_s, NULL);
		FUNC1(time_to_reenable, 0,
				       wpas_network_reenabled, wpa_s, NULL);
		return 0;
	}

	if (wpa_s->p2p_mgmt)
		return 0; /* no normal connection on p2p_mgmt interface */

	wpa_s->owe_transition_search = 0;
	selected = FUNC10(wpa_s, &ssid);

#ifdef CONFIG_MESH
	if (wpa_s->ifmsh) {
		wpa_msg(wpa_s, MSG_INFO,
			"Avoiding join because we already joined a mesh group");
		return 0;
	}
#endif /* CONFIG_MESH */

	if (selected) {
		int skip;
		skip = !FUNC9(wpa_s, selected, ssid);
		if (skip) {
			if (new_scan)
				FUNC14(wpa_s);
			return 0;
		}

		if (ssid != wpa_s->current_ssid &&
		    wpa_s->wpa_state >= WPA_AUTHENTICATING) {
			wpa_s->own_disconnect_req = 1;
			FUNC8(
				wpa_s, WLAN_REASON_DEAUTH_LEAVING);
		}

		if (FUNC7(wpa_s, selected, ssid) < 0) {
			FUNC3(wpa_s, MSG_DEBUG, "Connect failed");
			return -1;
		}
		if (new_scan)
			FUNC14(wpa_s);
		/*
		 * Do not allow other virtual radios to trigger operations based
		 * on these scan results since we do not want them to start
		 * other associations at the same time.
		 */
		return 1;
	} else {
		FUNC3(wpa_s, MSG_DEBUG, "No suitable network found");
		ssid = FUNC11(wpa_s);
		if (ssid) {
			FUNC3(wpa_s, MSG_DEBUG, "Setup a new network");
			FUNC6(wpa_s, NULL, ssid);
			if (new_scan)
				FUNC14(wpa_s);
		} else if (own_request) {
			/*
			 * No SSID found. If SCAN results are as a result of
			 * own scan request and not due to a scan request on
			 * another shared interface, try another scan.
			 */
			int timeout_sec = wpa_s->scan_interval;
			int timeout_usec = 0;
#ifdef CONFIG_P2P
			int res;

			res = wpas_p2p_scan_no_go_seen(wpa_s);
			if (res == 2)
				return 2;
			if (res == 1)
				return 0;

			if (wpa_s->p2p_in_provisioning ||
			    wpa_s->show_group_started ||
			    wpa_s->p2p_in_invitation) {
				/*
				 * Use shorter wait during P2P Provisioning
				 * state and during P2P join-a-group operation
				 * to speed up group formation.
				 */
				timeout_sec = 0;
				timeout_usec = 250000;
				wpa_supplicant_req_new_scan(wpa_s, timeout_sec,
							    timeout_usec);
				return 0;
			}
#endif /* CONFIG_P2P */
#ifdef CONFIG_INTERWORKING
			if (wpa_s->conf->auto_interworking &&
			    wpa_s->conf->interworking &&
			    wpa_s->conf->cred) {
				wpa_dbg(wpa_s, MSG_DEBUG, "Interworking: "
					"start ANQP fetch since no matching "
					"networks found");
				wpa_s->network_select = 1;
				wpa_s->auto_network_select = 1;
				interworking_start_fetch_anqp(wpa_s);
				return 1;
			}
#endif /* CONFIG_INTERWORKING */
#ifdef CONFIG_WPS
			if (wpa_s->after_wps > 0 || wpas_wps_searching(wpa_s)) {
				wpa_dbg(wpa_s, MSG_DEBUG, "Use shorter wait during WPS processing");
				timeout_sec = 0;
				timeout_usec = 500000;
				wpa_supplicant_req_new_scan(wpa_s, timeout_sec,
							    timeout_usec);
				return 0;
			}
#endif /* CONFIG_WPS */
#ifdef CONFIG_OWE
			if (wpa_s->owe_transition_search) {
				wpa_dbg(wpa_s, MSG_DEBUG,
					"OWE: Use shorter wait during transition mode search");
				timeout_sec = 0;
				timeout_usec = 500000;
				wpa_supplicant_req_new_scan(wpa_s, timeout_sec,
							    timeout_usec);
				return 0;
			}
#endif /* CONFIG_OWE */
			if (FUNC13(wpa_s))
				FUNC12(wpa_s, timeout_sec,
							    timeout_usec);

			FUNC5(wpa_s, MSG_INFO,
				     WPA_EVENT_NETWORK_NOT_FOUND);
		}
	}
	return 0;
}