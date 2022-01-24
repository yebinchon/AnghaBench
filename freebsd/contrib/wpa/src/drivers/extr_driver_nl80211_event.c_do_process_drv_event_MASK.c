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
struct TYPE_2__ {int flags; } ;
struct wpa_driver_nl80211_data {scalar_t__ ap_scan_as_station; int last_scan_cmd; int scan_complete_events; int /*<<< orphan*/  ctx; int /*<<< orphan*/  scan_state; int /*<<< orphan*/  scan_for_auth; int /*<<< orphan*/  first_bss; TYPE_1__ capa; } ;
struct nlattr {int dummy; } ;
struct i802_bss {int /*<<< orphan*/  ifname; struct wpa_driver_nl80211_data* drv; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_SCAN_STARTED ; 
 int /*<<< orphan*/  EVENT_SCHED_SCAN_STOPPED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 size_t NL80211_ATTR_ACK ; 
 size_t NL80211_ATTR_CENTER_FREQ1 ; 
 size_t NL80211_ATTR_CENTER_FREQ2 ; 
 size_t NL80211_ATTR_CHANNEL_WIDTH ; 
 size_t NL80211_ATTR_COOKIE ; 
 size_t NL80211_ATTR_DISCONNECTED_BY_AP ; 
 size_t NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM ; 
 size_t NL80211_ATTR_FILS_KEK ; 
 size_t NL80211_ATTR_FRAME ; 
 size_t NL80211_ATTR_IFINDEX ; 
 size_t NL80211_ATTR_MAC ; 
 size_t NL80211_ATTR_PMK ; 
 size_t NL80211_ATTR_PMKID ; 
 size_t NL80211_ATTR_REASON_CODE ; 
 size_t NL80211_ATTR_REQ_IE ; 
 size_t NL80211_ATTR_RESP_IE ; 
 size_t NL80211_ATTR_RX_SIGNAL_DBM ; 
 size_t NL80211_ATTR_STATUS_CODE ; 
 size_t NL80211_ATTR_STA_WME ; 
 size_t NL80211_ATTR_TIMED_OUT ; 
 size_t NL80211_ATTR_TIMEOUT_REASON ; 
 size_t NL80211_ATTR_WIPHY_CHANNEL_TYPE ; 
 size_t NL80211_ATTR_WIPHY_FREQ ; 
#define  NL80211_CMD_ASSOCIATE 168 
#define  NL80211_CMD_AUTHENTICATE 167 
#define  NL80211_CMD_CANCEL_REMAIN_ON_CHANNEL 166 
#define  NL80211_CMD_CH_SWITCH_NOTIFY 165 
#define  NL80211_CMD_CH_SWITCH_STARTED_NOTIFY 164 
#define  NL80211_CMD_CONNECT 163 
#define  NL80211_CMD_CONN_FAILED 162 
#define  NL80211_CMD_DEAUTHENTICATE 161 
#define  NL80211_CMD_DEL_STATION 160 
#define  NL80211_CMD_DISASSOCIATE 159 
#define  NL80211_CMD_DISCONNECT 158 
#define  NL80211_CMD_FRAME_TX_STATUS 157 
#define  NL80211_CMD_FT_EVENT 156 
#define  NL80211_CMD_JOIN_IBSS 155 
#define  NL80211_CMD_MICHAEL_MIC_FAILURE 154 
#define  NL80211_CMD_NEW_PEER_CANDIDATE 153 
#define  NL80211_CMD_NEW_SCAN_RESULTS 152 
#define  NL80211_CMD_NEW_STATION 151 
#define  NL80211_CMD_NOTIFY_CQM 150 
#define  NL80211_CMD_PMKSA_CANDIDATE 149 
#define  NL80211_CMD_PORT_AUTHORIZED 148 
#define  NL80211_CMD_PROBE_CLIENT 147 
#define  NL80211_CMD_RADAR_DETECT 146 
#define  NL80211_CMD_REG_BEACON_HINT 145 
#define  NL80211_CMD_REG_CHANGE 144 
#define  NL80211_CMD_REMAIN_ON_CHANNEL 143 
#define  NL80211_CMD_ROAM 142 
#define  NL80211_CMD_SCAN_ABORTED 141 
#define  NL80211_CMD_SCHED_SCAN_RESULTS 140 
#define  NL80211_CMD_SCHED_SCAN_STOPPED 139 
#define  NL80211_CMD_SET_REKEY_OFFLOAD 138 
#define  NL80211_CMD_START_SCHED_SCAN 137 
#define  NL80211_CMD_STA_OPMODE_CHANGED 136 
#define  NL80211_CMD_STOP_AP 135 
#define  NL80211_CMD_TDLS_OPER 134 
#define  NL80211_CMD_TRIGGER_SCAN 133 
#define  NL80211_CMD_UNPROT_DEAUTHENTICATE 132 
#define  NL80211_CMD_UNPROT_DISASSOCIATE 131 
#define  NL80211_CMD_UPDATE_OWE_INFO 130 
#define  NL80211_CMD_VENDOR 129 
#define  NL80211_CMD_WIPHY_REG_CHANGE 128 
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  SCAN_ABORTED ; 
 int /*<<< orphan*/  SCAN_COMPLETED ; 
 int /*<<< orphan*/  SCAN_STARTED ; 
 int /*<<< orphan*/  SCHED_SCAN_RESULTS ; 
 int /*<<< orphan*/  SCHED_SCAN_STARTED ; 
 int /*<<< orphan*/  SCHED_SCAN_STOPPED ; 
 int WPA_DRIVER_FLAGS_KEY_MGMT_OFFLOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_driver_nl80211_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i802_bss*,int,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_driver_nl80211_data*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_driver_nl80211_data*,int,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nlattr*,int /*<<< orphan*/ *,struct nlattr*,struct nlattr*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_driver_nl80211_data*,struct i802_bss*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_driver_nl80211_data*,struct nlattr*,struct nlattr*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_driver_nl80211_data*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_driver_nl80211_data*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC8 (struct i802_bss*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_driver_nl80211_data*,int,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC10 (struct wpa_driver_nl80211_data*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct wpa_driver_nl80211_data*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC13 (struct wpa_driver_nl80211_data*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC14 (struct wpa_driver_nl80211_data*,struct i802_bss*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC15 (struct wpa_driver_nl80211_data*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC16 (struct wpa_driver_nl80211_data*,struct i802_bss*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC17 (struct wpa_driver_nl80211_data*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC18 (struct wpa_driver_nl80211_data*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC19 (struct wpa_driver_nl80211_data*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC20 (struct wpa_driver_nl80211_data*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC21 (struct wpa_driver_nl80211_data*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC22 (struct wpa_driver_nl80211_data*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC23 (struct wpa_driver_nl80211_data*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC24 (struct wpa_driver_nl80211_data*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC25 (struct wpa_driver_nl80211_data*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC26 (struct wpa_driver_nl80211_data*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC27 (struct wpa_driver_nl80211_data*,int,struct nlattr**,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  wpa_driver_nl80211_scan_timeout ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC32(struct i802_bss *bss, int cmd,
				 struct nlattr **tb)
{
	struct wpa_driver_nl80211_data *drv = bss->drv;
	int external_scan_event = 0;

	FUNC30(MSG_DEBUG, "nl80211: Drv Event %d (%s) received for %s",
		   cmd, FUNC11(cmd), bss->ifname);

	if (cmd == NL80211_CMD_ROAM &&
	    (drv->capa.flags & WPA_DRIVER_FLAGS_KEY_MGMT_OFFLOAD)) {
		/*
		 * Device will use roam+auth vendor event to indicate
		 * roaming, so ignore the regular roam event.
		 */
		FUNC30(MSG_DEBUG,
			   "nl80211: Ignore roam event (cmd=%d), device will use vendor event roam+auth",
			   cmd);
		return;
	}

	if (drv->ap_scan_as_station != NL80211_IFTYPE_UNSPECIFIED &&
	    (cmd == NL80211_CMD_NEW_SCAN_RESULTS ||
	     cmd == NL80211_CMD_SCAN_ABORTED)) {
		FUNC29(drv->first_bss,
					    drv->ap_scan_as_station);
		drv->ap_scan_as_station = NL80211_IFTYPE_UNSPECIFIED;
	}

	switch (cmd) {
	case NL80211_CMD_TRIGGER_SCAN:
		FUNC28(drv->ctx, MSG_DEBUG, "nl80211: Scan trigger");
		drv->scan_state = SCAN_STARTED;
		if (drv->scan_for_auth) {
			/*
			 * Cannot indicate EVENT_SCAN_STARTED here since we skip
			 * EVENT_SCAN_RESULTS in scan_for_auth case and the
			 * upper layer implementation could get confused about
			 * scanning state.
			 */
			FUNC30(MSG_DEBUG, "nl80211: Do not indicate scan-start event due to internal scan_for_auth");
			break;
		}
		FUNC31(drv->ctx, EVENT_SCAN_STARTED, NULL);
		break;
	case NL80211_CMD_START_SCHED_SCAN:
		FUNC28(drv->ctx, MSG_DEBUG, "nl80211: Sched scan started");
		drv->scan_state = SCHED_SCAN_STARTED;
		break;
	case NL80211_CMD_SCHED_SCAN_STOPPED:
		FUNC28(drv->ctx, MSG_DEBUG, "nl80211: Sched scan stopped");
		drv->scan_state = SCHED_SCAN_STOPPED;
		FUNC31(drv->ctx, EVENT_SCHED_SCAN_STOPPED, NULL);
		break;
	case NL80211_CMD_NEW_SCAN_RESULTS:
		FUNC28(drv->ctx, MSG_DEBUG,
			"nl80211: New scan results available");
		if (drv->last_scan_cmd != NL80211_CMD_VENDOR)
			drv->scan_state = SCAN_COMPLETED;
		drv->scan_complete_events = 1;
		if (drv->last_scan_cmd == NL80211_CMD_TRIGGER_SCAN) {
			FUNC0(wpa_driver_nl80211_scan_timeout,
					     drv, drv->ctx);
			drv->last_scan_cmd = 0;
		} else {
			external_scan_event = 1;
		}
		FUNC27(drv, 0, tb, external_scan_event);
		break;
	case NL80211_CMD_SCHED_SCAN_RESULTS:
		FUNC28(drv->ctx, MSG_DEBUG,
			"nl80211: New sched scan results available");
		drv->scan_state = SCHED_SCAN_RESULTS;
		FUNC27(drv, 0, tb, 0);
		break;
	case NL80211_CMD_SCAN_ABORTED:
		FUNC28(drv->ctx, MSG_DEBUG, "nl80211: Scan aborted");
		if (drv->last_scan_cmd != NL80211_CMD_VENDOR)
			drv->scan_state = SCAN_ABORTED;
		if (drv->last_scan_cmd == NL80211_CMD_TRIGGER_SCAN) {
			/*
			 * Need to indicate that scan results are available in
			 * order not to make wpa_supplicant stop its scanning.
			 */
			FUNC0(wpa_driver_nl80211_scan_timeout,
					     drv, drv->ctx);
			drv->last_scan_cmd = 0;
		} else {
			external_scan_event = 1;
		}
		FUNC27(drv, 1, tb, external_scan_event);
		break;
	case NL80211_CMD_AUTHENTICATE:
	case NL80211_CMD_ASSOCIATE:
	case NL80211_CMD_DEAUTHENTICATE:
	case NL80211_CMD_DISASSOCIATE:
	case NL80211_CMD_FRAME_TX_STATUS:
	case NL80211_CMD_UNPROT_DEAUTHENTICATE:
	case NL80211_CMD_UNPROT_DISASSOCIATE:
		FUNC1(bss, cmd, tb[NL80211_ATTR_FRAME],
			   tb[NL80211_ATTR_MAC], tb[NL80211_ATTR_TIMED_OUT],
			   tb[NL80211_ATTR_WIPHY_FREQ], tb[NL80211_ATTR_ACK],
			   tb[NL80211_ATTR_COOKIE],
			   tb[NL80211_ATTR_RX_SIGNAL_DBM],
			   tb[NL80211_ATTR_STA_WME],
			   tb[NL80211_ATTR_REQ_IE]);
		break;
	case NL80211_CMD_CONNECT:
	case NL80211_CMD_ROAM:
		FUNC3(drv, cmd,
				   tb[NL80211_ATTR_STATUS_CODE],
				   tb[NL80211_ATTR_MAC],
				   tb[NL80211_ATTR_REQ_IE],
				   tb[NL80211_ATTR_RESP_IE],
				   tb[NL80211_ATTR_TIMED_OUT],
				   tb[NL80211_ATTR_TIMEOUT_REASON],
				   NULL, NULL, NULL,
				   tb[NL80211_ATTR_FILS_KEK],
				   NULL,
				   tb[NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM],
				   tb[NL80211_ATTR_PMK],
				   tb[NL80211_ATTR_PMKID]);
		break;
	case NL80211_CMD_CH_SWITCH_STARTED_NOTIFY:
		FUNC2(drv,
				     tb[NL80211_ATTR_IFINDEX],
				     tb[NL80211_ATTR_WIPHY_FREQ],
				     tb[NL80211_ATTR_WIPHY_CHANNEL_TYPE],
				     tb[NL80211_ATTR_CHANNEL_WIDTH],
				     tb[NL80211_ATTR_CENTER_FREQ1],
				     tb[NL80211_ATTR_CENTER_FREQ2],
				     0);
		break;
	case NL80211_CMD_CH_SWITCH_NOTIFY:
		FUNC2(drv,
				     tb[NL80211_ATTR_IFINDEX],
				     tb[NL80211_ATTR_WIPHY_FREQ],
				     tb[NL80211_ATTR_WIPHY_CHANNEL_TYPE],
				     tb[NL80211_ATTR_CHANNEL_WIDTH],
				     tb[NL80211_ATTR_CENTER_FREQ1],
				     tb[NL80211_ATTR_CENTER_FREQ2],
				     1);
		break;
	case NL80211_CMD_DISCONNECT:
		FUNC5(drv, tb[NL80211_ATTR_REASON_CODE],
				      tb[NL80211_ATTR_MAC],
				      tb[NL80211_ATTR_DISCONNECTED_BY_AP]);
		break;
	case NL80211_CMD_MICHAEL_MIC_FAILURE:
		FUNC8(bss, tb);
		break;
	case NL80211_CMD_JOIN_IBSS:
		FUNC7(drv, tb);
		break;
	case NL80211_CMD_REMAIN_ON_CHANNEL:
		FUNC9(drv, 0, tb);
		break;
	case NL80211_CMD_CANCEL_REMAIN_ON_CHANNEL:
		FUNC9(drv, 1, tb);
		break;
	case NL80211_CMD_NOTIFY_CQM:
		FUNC13(drv, tb);
		break;
	case NL80211_CMD_REG_CHANGE:
	case NL80211_CMD_WIPHY_REG_CHANGE:
		FUNC21(drv, tb);
		break;
	case NL80211_CMD_REG_BEACON_HINT:
		FUNC20(drv, tb);
		break;
	case NL80211_CMD_NEW_STATION:
		FUNC16(drv, bss, tb);
		break;
	case NL80211_CMD_DEL_STATION:
		FUNC14(drv, bss, tb);
		break;
	case NL80211_CMD_SET_REKEY_OFFLOAD:
		FUNC22(drv, tb);
		break;
	case NL80211_CMD_PMKSA_CANDIDATE:
		FUNC17(drv, tb);
		break;
	case NL80211_CMD_PROBE_CLIENT:
		FUNC10(drv, tb);
		break;
	case NL80211_CMD_TDLS_OPER:
		FUNC25(drv, tb);
		break;
	case NL80211_CMD_CONN_FAILED:
		FUNC12(drv, tb);
		break;
	case NL80211_CMD_FT_EVENT:
		FUNC6(drv, tb);
		break;
	case NL80211_CMD_RADAR_DETECT:
		FUNC19(drv, tb);
		break;
	case NL80211_CMD_STOP_AP:
		FUNC24(drv, tb);
		break;
	case NL80211_CMD_VENDOR:
		FUNC26(drv, tb);
		break;
	case NL80211_CMD_NEW_PEER_CANDIDATE:
		FUNC15(drv, tb);
		break;
	case NL80211_CMD_PORT_AUTHORIZED:
		FUNC18(drv, tb);
		break;
	case NL80211_CMD_STA_OPMODE_CHANGED:
		FUNC23(drv, tb);
		break;
	case NL80211_CMD_UPDATE_OWE_INFO:
		FUNC4(drv, bss, tb);
		break;
	default:
		FUNC28(drv->ctx, MSG_DEBUG, "nl80211: Ignored unknown event "
			"(cmd=%d)", cmd);
		break;
	}
}