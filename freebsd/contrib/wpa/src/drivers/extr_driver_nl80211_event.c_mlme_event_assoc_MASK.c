#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {size_t resp_frame_len; size_t resp_ies_len; int /*<<< orphan*/  wmm_params; int /*<<< orphan*/  freq; int /*<<< orphan*/  req_ies_len; int /*<<< orphan*/  req_ies; int /*<<< orphan*/ * resp_ies; int /*<<< orphan*/  const* resp_frame; } ;
struct TYPE_8__ {size_t resp_ies_len; scalar_t__ status_code; int /*<<< orphan*/ * resp_ies; int /*<<< orphan*/  bssid; } ;
union wpa_event_data {TYPE_6__ assoc_info; TYPE_2__ assoc_reject; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct TYPE_7__ {int flags; } ;
struct wpa_driver_nl80211_data {int associated; int ssid_len; int /*<<< orphan*/  ctx; int /*<<< orphan*/  assoc_freq; TYPE_5__* first_bss; int /*<<< orphan*/  ssid; int /*<<< orphan*/  prev_bssid; int /*<<< orphan*/  bssid; scalar_t__ force_connect_cmd; TYPE_1__ capa; } ;
struct nlattr {int dummy; } ;
struct TYPE_9__ {scalar_t__ variable; int /*<<< orphan*/  status_code; } ;
struct TYPE_10__ {TYPE_3__ assoc_resp; } ;
struct ieee80211_mgmt {TYPE_4__ u; int /*<<< orphan*/  sa; int /*<<< orphan*/  bssid; } ;
typedef  int /*<<< orphan*/  event ;
struct TYPE_11__ {int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  EVENT_ASSOC ; 
 int /*<<< orphan*/  EVENT_ASSOC_REJECT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ WLAN_STATUS_SUCCESS ; 
 int WPA_DRIVER_FLAGS_SME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wpa_driver_nl80211_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union wpa_event_data*) ; 

__attribute__((used)) static void FUNC10(struct wpa_driver_nl80211_data *drv,
			     const u8 *frame, size_t len, struct nlattr *wmm,
			     struct nlattr *req_ie)
{
	const struct ieee80211_mgmt *mgmt;
	union wpa_event_data event;
	u16 status;
	int ssid_len;

	if (!(drv->capa.flags & WPA_DRIVER_FLAGS_SME) &&
	    drv->force_connect_cmd) {
		/*
		 * Avoid reporting two association events that would confuse
		 * the core code.
		 */
		FUNC7(MSG_DEBUG,
			   "nl80211: Ignore assoc event when using driver SME");
		return;
	}

	FUNC7(MSG_DEBUG, "nl80211: Associate event");
	mgmt = (const struct ieee80211_mgmt *) frame;
	if (len < 24 + sizeof(mgmt->u.assoc_resp)) {
		FUNC7(MSG_DEBUG, "nl80211: Too short association event "
			   "frame");
		return;
	}

	status = FUNC0(mgmt->u.assoc_resp.status_code);
	if (status != WLAN_STATUS_SUCCESS) {
		FUNC6(&event, 0, sizeof(event));
		event.assoc_reject.bssid = mgmt->bssid;
		if (len > 24 + sizeof(mgmt->u.assoc_resp)) {
			event.assoc_reject.resp_ies =
				(u8 *) mgmt->u.assoc_resp.variable;
			event.assoc_reject.resp_ies_len =
				len - 24 - sizeof(mgmt->u.assoc_resp);
		}
		event.assoc_reject.status_code = status;

		FUNC9(drv->ctx, EVENT_ASSOC_REJECT, &event);
		return;
	}

	drv->associated = 1;
	FUNC5(drv->bssid, mgmt->sa, ETH_ALEN);
	FUNC5(drv->prev_bssid, mgmt->sa, ETH_ALEN);

	FUNC6(&event, 0, sizeof(event));
	event.assoc_info.resp_frame = frame;
	event.assoc_info.resp_frame_len = len;
	if (len > 24 + sizeof(mgmt->u.assoc_resp)) {
		event.assoc_info.resp_ies = (u8 *) mgmt->u.assoc_resp.variable;
		event.assoc_info.resp_ies_len =
			len - 24 - sizeof(mgmt->u.assoc_resp);
	}

	if (req_ie) {
		event.assoc_info.req_ies = FUNC3(req_ie);
		event.assoc_info.req_ies_len = FUNC4(req_ie);
	}

	/* When this association was initiated outside of wpa_supplicant,
	 * drv->ssid needs to be set here to satisfy later checking. */
	ssid_len = FUNC1(drv, drv->ssid);
	if (ssid_len > 0) {
		drv->ssid_len = ssid_len;
		FUNC7(MSG_DEBUG,
			   "nl80211: Set drv->ssid based on scan res info to '%s'",
			   FUNC8(drv->ssid, drv->ssid_len));
	}

	event.assoc_info.freq = drv->assoc_freq;
	drv->first_bss->freq = drv->assoc_freq;

	FUNC2(wmm, &event.assoc_info.wmm_params);

	FUNC9(drv->ctx, EVENT_ASSOC, &event);
}