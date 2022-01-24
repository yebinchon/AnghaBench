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
struct wpabuf {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rrm_used; } ;
struct wpa_supplicant {scalar_t__ wpa_state; int drv_rrm_flags; int /*<<< orphan*/  bssid; int /*<<< orphan*/  own_addr; int /*<<< orphan*/  assoc_freq; TYPE_1__ rrm; } ;
struct rrm_link_measurement_request {int /*<<< orphan*/  dialog_token; } ;
struct TYPE_4__ {int len; int /*<<< orphan*/  eid; } ;
struct rrm_link_measurement_report {int rsni; int /*<<< orphan*/  rcpi; TYPE_2__ tpc; int /*<<< orphan*/  dialog_token; } ;
typedef  int /*<<< orphan*/  report ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  WLAN_ACTION_RADIO_MEASUREMENT ; 
 int /*<<< orphan*/  WLAN_EID_TPC_REPORT ; 
 int /*<<< orphan*/  WLAN_RRM_LINK_MEASUREMENT_REPORT ; 
 scalar_t__ WPA_COMPLETED ; 
 int WPA_DRIVER_FLAGS_TX_POWER_INSERTION ; 
 int /*<<< orphan*/  FUNC0 (struct rrm_link_measurement_report*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,struct rrm_link_measurement_report*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,int /*<<< orphan*/ ) ; 

void FUNC11(struct wpa_supplicant *wpa_s,
					      const u8 *src,
					      const u8 *frame, size_t len,
					      int rssi)
{
	struct wpabuf *buf;
	const struct rrm_link_measurement_request *req;
	struct rrm_link_measurement_report report;

	if (wpa_s->wpa_state != WPA_COMPLETED) {
		FUNC4(MSG_INFO,
			   "RRM: Ignoring link measurement request. Not associated");
		return;
	}

	if (!wpa_s->rrm.rrm_used) {
		FUNC4(MSG_INFO,
			   "RRM: Ignoring link measurement request. Not RRM network");
		return;
	}

	if (!(wpa_s->drv_rrm_flags & WPA_DRIVER_FLAGS_TX_POWER_INSERTION)) {
		FUNC4(MSG_INFO,
			   "RRM: Measurement report failed. TX power insertion not supported");
		return;
	}

	req = (const struct rrm_link_measurement_request *) frame;
	if (len < sizeof(*req)) {
		FUNC4(MSG_INFO,
			   "RRM: Link measurement report failed. Request too short");
		return;
	}

	FUNC0(&report, 0, sizeof(report));
	report.dialog_token = req->dialog_token;
	report.tpc.eid = WLAN_EID_TPC_REPORT;
	report.tpc.len = 2;
	/* Note: The driver is expected to update report.tpc.tx_power and
	 * report.tpc.link_margin subfields when sending out this frame.
	 * Similarly, the driver would need to update report.rx_ant_id and
	 * report.tx_ant_id subfields. */
	report.rsni = 255; /* 255 indicates that RSNI is not available */
	report.rcpi = FUNC1(rssi);

	/* action_category + action_code */
	buf = FUNC5(2 + sizeof(report));
	if (buf == NULL) {
		FUNC4(MSG_ERROR,
			   "RRM: Link measurement report failed. Buffer allocation failed");
		return;
	}

	FUNC10(buf, WLAN_ACTION_RADIO_MEASUREMENT);
	FUNC10(buf, WLAN_RRM_LINK_MEASUREMENT_REPORT);
	FUNC9(buf, &report, sizeof(report));
	FUNC3(MSG_DEBUG, "RRM: Link measurement report", buf);

	if (FUNC2(wpa_s, wpa_s->assoc_freq, 0, src,
				wpa_s->own_addr, wpa_s->bssid,
				FUNC7(buf), FUNC8(buf), 0)) {
		FUNC4(MSG_ERROR,
			   "RRM: Link measurement report failed. Send action failed");
	}
	FUNC6(buf);
}