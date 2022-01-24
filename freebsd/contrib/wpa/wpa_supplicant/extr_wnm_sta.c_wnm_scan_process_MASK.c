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
struct wpa_supplicant {int /*<<< orphan*/  wnm_dialog_token; scalar_t__ wnm_reply; TYPE_1__* current_bss; int /*<<< orphan*/  wnm_cand_from_bss; int /*<<< orphan*/  scan_trigger_time; int /*<<< orphan*/  wnm_cand_valid_until; int /*<<< orphan*/  wnm_neighbor_report_elements; struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {int dummy; } ;
struct wpa_bss {int dummy; } ;
typedef  enum mbo_transition_reject_reason { ____Placeholder_mbo_transition_reject_reason } mbo_transition_reject_reason ;
typedef  enum bss_trans_mgmt_status_code { ____Placeholder_bss_trans_mgmt_status_code } bss_trans_mgmt_status_code ;
struct TYPE_2__ {int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int MBO_TRANSITION_REJECT_REASON_UNSPECIFIED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WNM_BSS_TM_REJECT_NO_SUITABLE_CANDIDATES ; 
 int WNM_BSS_TM_REJECT_UNSPECIFIED ; 
 struct wpa_bss* FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,struct wpa_bss*,struct wpa_ssid*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

int FUNC8(struct wpa_supplicant *wpa_s, int reply_on_fail)
{
	struct wpa_bss *bss;
	struct wpa_ssid *ssid = wpa_s->current_ssid;
	enum bss_trans_mgmt_status_code status = WNM_BSS_TM_REJECT_UNSPECIFIED;
	enum mbo_transition_reject_reason reason =
		MBO_TRANSITION_REJECT_REASON_UNSPECIFIED;

	if (!wpa_s->wnm_neighbor_report_elements)
		return 0;

	FUNC6(wpa_s, MSG_DEBUG,
		"WNM: Process scan results for BSS Transition Management");
	if (FUNC2(&wpa_s->wnm_cand_valid_until,
			      &wpa_s->scan_trigger_time)) {
		FUNC7(MSG_DEBUG, "WNM: Previously stored BSS transition candidate list is not valid anymore - drop it");
		FUNC4(wpa_s);
		return 0;
	}

	if (!wpa_s->current_bss ||
	    FUNC1(wpa_s->wnm_cand_from_bss, wpa_s->current_bss->bssid,
		      ETH_ALEN) != 0) {
		FUNC7(MSG_DEBUG, "WNM: Stored BSS transition candidate list not from the current BSS - ignore it");
		return 0;
	}

	/* Compare the Neighbor Report and scan results */
	bss = FUNC0(wpa_s, 0, &reason);
	if (!bss) {
		FUNC7(MSG_DEBUG, "WNM: No BSS transition candidate match found");
		status = WNM_BSS_TM_REJECT_NO_SUITABLE_CANDIDATES;
		goto send_bss_resp_fail;
	}

	/* Associate to the network */
	FUNC3(wpa_s, bss, ssid, 1);
	return 1;

send_bss_resp_fail:
	if (!reply_on_fail)
		return 0;

	/* Send reject response for all the failures */

	if (wpa_s->wnm_reply) {
		wpa_s->wnm_reply = 0;
		FUNC5(wpa_s,
						  wpa_s->wnm_dialog_token,
						  status, reason, 0, NULL);
	}
	FUNC4(wpa_s);

	return 0;
}