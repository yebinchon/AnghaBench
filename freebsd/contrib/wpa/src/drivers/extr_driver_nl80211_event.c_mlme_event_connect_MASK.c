#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int const* req_ies; int const* resp_ies; int authorized; int const* key_replay_ctr; int const* ptk_kck; int const* ptk_kek; int const* fils_pmk; int const* fils_pmkid; void* fils_pmk_len; scalar_t__ fils_erp_next_seq_num; scalar_t__ subnet_status; void* ptk_kek_len; void* ptk_kck_len; void* key_replay_ctr_len; int /*<<< orphan*/  freq; void* resp_ies_len; void* req_ies_len; } ;
struct TYPE_6__ {int const* bssid; int const* resp_ies; char* timeout_reason; scalar_t__ fils_erp_next_seq_num; int /*<<< orphan*/  timed_out; scalar_t__ status_code; void* resp_ies_len; } ;
union wpa_event_data {TYPE_4__ assoc_info; TYPE_2__ assoc_reject; } ;
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct TYPE_5__ {int flags; } ;
struct wpa_driver_nl80211_data {int associated; int const* bssid; int const* prev_bssid; int ssid_len; int const* ssid; int /*<<< orphan*/  ctx; int /*<<< orphan*/  assoc_freq; TYPE_3__* first_bss; int /*<<< orphan*/  auth_attempt_bssid; int /*<<< orphan*/  ignore_next_local_disconnect; scalar_t__ connect_reassoc; TYPE_1__ capa; } ;
struct nlattr {int dummy; } ;
typedef  int /*<<< orphan*/  event ;
typedef  enum nl80211_timeout_reason { ____Placeholder_nl80211_timeout_reason } nl80211_timeout_reason ;
typedef  enum nl80211_commands { ____Placeholder_nl80211_commands } nl80211_commands ;
struct TYPE_7__ {int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int const ETH_ALEN ; 
 int /*<<< orphan*/  EVENT_ASSOC ; 
 int /*<<< orphan*/  EVENT_ASSOC_REJECT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int NL80211_CMD_CONNECT ; 
 int NL80211_CMD_ROAM ; 
#define  NL80211_TIMEOUT_ASSOC 130 
#define  NL80211_TIMEOUT_AUTH 129 
#define  NL80211_TIMEOUT_SCAN 128 
 int /*<<< orphan*/  WLAN_EID_SSID ; 
 scalar_t__ WLAN_STATUS_SUCCESS ; 
 int WPA_DRIVER_FLAGS_SME ; 
 int* FUNC0 (int const*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_driver_nl80211_data*) ; 
 int FUNC2 (struct wpa_driver_nl80211_data*,int const*) ; 
 int const* FUNC3 (struct nlattr*) ; 
 scalar_t__ FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr*) ; 
 scalar_t__ FUNC6 (struct nlattr*) ; 
 void* FUNC7 (struct nlattr*) ; 
 scalar_t__ FUNC8 (int const*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC9 (int const*,int const*,int const) ; 
 int /*<<< orphan*/  FUNC10 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int const*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union wpa_event_data*) ; 

__attribute__((used)) static void FUNC14(struct wpa_driver_nl80211_data *drv,
			       enum nl80211_commands cmd, struct nlattr *status,
			       struct nlattr *addr, struct nlattr *req_ie,
			       struct nlattr *resp_ie,
			       struct nlattr *timed_out,
			       struct nlattr *timeout_reason,
			       struct nlattr *authorized,
			       struct nlattr *key_replay_ctr,
			       struct nlattr *ptk_kck,
			       struct nlattr *ptk_kek,
			       struct nlattr *subnet_status,
			       struct nlattr *fils_erp_next_seq_num,
			       struct nlattr *fils_pmk,
			       struct nlattr *fils_pmkid)
{
	union wpa_event_data event;
	const u8 *ssid = NULL;
	u16 status_code;
	int ssid_len;

	if (drv->capa.flags & WPA_DRIVER_FLAGS_SME) {
		/*
		 * Avoid reporting two association events that would confuse
		 * the core code.
		 */
		FUNC11(MSG_DEBUG, "nl80211: Ignore connect event (cmd=%d) "
			   "when using userspace SME", cmd);
		return;
	}

	drv->connect_reassoc = 0;

	status_code = status ? FUNC4(status) : WLAN_STATUS_SUCCESS;

	if (cmd == NL80211_CMD_CONNECT) {
		FUNC11(MSG_DEBUG,
			   "nl80211: Connect event (status=%u ignore_next_local_disconnect=%d)",
			   status_code, drv->ignore_next_local_disconnect);
	} else if (cmd == NL80211_CMD_ROAM) {
		FUNC11(MSG_DEBUG, "nl80211: Roam event");
	}

	FUNC10(&event, 0, sizeof(event));
	if (cmd == NL80211_CMD_CONNECT && status_code != WLAN_STATUS_SUCCESS) {
		if (addr)
			event.assoc_reject.bssid = FUNC3(addr);
		if (drv->ignore_next_local_disconnect) {
			drv->ignore_next_local_disconnect = 0;
			if (!event.assoc_reject.bssid ||
			    (FUNC8(event.assoc_reject.bssid,
				       drv->auth_attempt_bssid,
				       ETH_ALEN) != 0)) {
				/*
				 * Ignore the event that came without a BSSID or
				 * for the old connection since this is likely
				 * not relevant to the new Connect command.
				 */
				FUNC11(MSG_DEBUG,
					   "nl80211: Ignore connection failure event triggered during reassociation");
				return;
			}
		}
		if (resp_ie) {
			event.assoc_reject.resp_ies = FUNC3(resp_ie);
			event.assoc_reject.resp_ies_len = FUNC7(resp_ie);
		}
		event.assoc_reject.status_code = status_code;
		event.assoc_reject.timed_out = timed_out != NULL;
		if (timed_out && timeout_reason) {
			enum nl80211_timeout_reason reason;

			reason = FUNC5(timeout_reason);
			switch (reason) {
			case NL80211_TIMEOUT_SCAN:
				event.assoc_reject.timeout_reason = "scan";
				break;
			case NL80211_TIMEOUT_AUTH:
				event.assoc_reject.timeout_reason = "auth";
				break;
			case NL80211_TIMEOUT_ASSOC:
				event.assoc_reject.timeout_reason = "assoc";
				break;
			default:
				break;
			}
		}
		if (fils_erp_next_seq_num)
			event.assoc_reject.fils_erp_next_seq_num =
				FUNC4(fils_erp_next_seq_num);
		FUNC13(drv->ctx, EVENT_ASSOC_REJECT, &event);
		return;
	}

	drv->associated = 1;
	if (addr) {
		FUNC9(drv->bssid, FUNC3(addr), ETH_ALEN);
		FUNC9(drv->prev_bssid, drv->bssid, ETH_ALEN);
	}

	if (req_ie) {
		event.assoc_info.req_ies = FUNC3(req_ie);
		event.assoc_info.req_ies_len = FUNC7(req_ie);

		if (cmd == NL80211_CMD_ROAM) {
			ssid = FUNC0(event.assoc_info.req_ies,
				      event.assoc_info.req_ies_len,
				      WLAN_EID_SSID);
			if (ssid && ssid[1] > 0 && ssid[1] <= 32) {
				drv->ssid_len = ssid[1];
				FUNC9(drv->ssid, ssid + 2, ssid[1]);
				FUNC11(MSG_DEBUG,
					   "nl80211: Set drv->ssid based on req_ie to '%s'",
					   FUNC12(drv->ssid,
							drv->ssid_len));
			}
		}
	}
	if (resp_ie) {
		event.assoc_info.resp_ies = FUNC3(resp_ie);
		event.assoc_info.resp_ies_len = FUNC7(resp_ie);
	}

	event.assoc_info.freq = FUNC1(drv);
	drv->first_bss->freq = drv->assoc_freq;

	if ((!ssid || ssid[1] == 0 || ssid[1] > 32) &&
	    (ssid_len = FUNC2(drv, drv->ssid)) > 0) {
		/* When this connection was initiated outside of wpa_supplicant,
		 * drv->ssid needs to be set here to satisfy later checking. */
		drv->ssid_len = ssid_len;
		FUNC11(MSG_DEBUG,
			   "nl80211: Set drv->ssid based on scan res info to '%s'",
			   FUNC12(drv->ssid, drv->ssid_len));
	}

	if (authorized && FUNC6(authorized)) {
		event.assoc_info.authorized = 1;
		FUNC11(MSG_DEBUG, "nl80211: connection authorized");
	}
	if (key_replay_ctr) {
		event.assoc_info.key_replay_ctr = FUNC3(key_replay_ctr);
		event.assoc_info.key_replay_ctr_len = FUNC7(key_replay_ctr);
	}
	if (ptk_kck) {
		event.assoc_info.ptk_kck = FUNC3(ptk_kck);
		event.assoc_info.ptk_kck_len = FUNC7(ptk_kck);
	}
	if (ptk_kek) {
		event.assoc_info.ptk_kek = FUNC3(ptk_kek);
		event.assoc_info.ptk_kek_len = FUNC7(ptk_kek);
	}

	if (subnet_status) {
		/*
		 * At least for now, this is only available from
		 * QCA_WLAN_VENDOR_ATTR_ROAM_AUTH_SUBNET_STATUS and that
		 * attribute has the same values 0, 1, 2 as are used in the
		 * variable here, so no mapping between different values are
		 * needed.
		 */
		event.assoc_info.subnet_status = FUNC6(subnet_status);
	}

	if (fils_erp_next_seq_num)
		event.assoc_info.fils_erp_next_seq_num =
			FUNC4(fils_erp_next_seq_num);

	if (fils_pmk) {
		event.assoc_info.fils_pmk = FUNC3(fils_pmk);
		event.assoc_info.fils_pmk_len = FUNC7(fils_pmk);
	}

	if (fils_pmkid)
		event.assoc_info.fils_pmkid = FUNC3(fils_pmkid);

	FUNC13(drv->ctx, EVENT_ASSOC, &event);
}