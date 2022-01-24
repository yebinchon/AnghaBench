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
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_4__ {void (* notify_neighbor_rep ) (void*,struct wpabuf*) ;int next_neighbor_rep_token; void* neighbor_rep_cb_ctx; int /*<<< orphan*/  rrm_used; } ;
struct wpa_supplicant {scalar_t__ wpa_state; TYPE_2__ rrm; int /*<<< orphan*/  bssid; int /*<<< orphan*/  own_addr; int /*<<< orphan*/  assoc_freq; TYPE_1__* current_bss; int /*<<< orphan*/ * current_ssid; } ;
struct wpa_ssid_value {int ssid_len; int /*<<< orphan*/  ssid; } ;
struct TYPE_3__ {int caps; } ;

/* Variables and functions */
 int EBUSY ; 
 int ECANCELED ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 int IEEE80211_CAP_RRM ; 
 int LCI_REQ_SUBELEM_MAX_AGE ; 
 int LOCATION_SUBJECT_REMOTE ; 
 int MEASURE_REQUEST_CIVIC_LEN ; 
 int MEASURE_REQUEST_LCI_LEN ; 
 int MEASURE_TYPE_LCI ; 
 int MEASURE_TYPE_LOCATION_CIVIC ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  RRM_NEIGHBOR_REPORT_TIMEOUT ; 
 int WLAN_ACTION_RADIO_MEASUREMENT ; 
 int WLAN_EID_MEASURE_REQUEST ; 
 int /*<<< orphan*/  WLAN_EID_RRM_ENABLED_CAPABILITIES ; 
 int WLAN_EID_SSID ; 
 int const WLAN_RRM_CAPS_NEIGHBOR_REPORT ; 
 int WLAN_RRM_NEIGHBOR_REPORT_REQUEST ; 
 scalar_t__ WPA_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct wpabuf* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  wpas_rrm_neighbor_rep_timeout_handler ; 

int FUNC12(struct wpa_supplicant *wpa_s,
				       const struct wpa_ssid_value *ssid,
				       int lci, int civic,
				       void (*cb)(void *ctx,
						  struct wpabuf *neighbor_rep),
				       void *cb_ctx)
{
	struct wpabuf *buf;
	const u8 *rrm_ie;

	if (wpa_s->wpa_state != WPA_COMPLETED || wpa_s->current_ssid == NULL) {
		FUNC3(MSG_DEBUG, "RRM: No connection, no RRM.");
		return -ENOTCONN;
	}

	if (!wpa_s->rrm.rrm_used) {
		FUNC3(MSG_DEBUG, "RRM: No RRM in current connection.");
		return -EOPNOTSUPP;
	}

	rrm_ie = FUNC1(wpa_s->current_bss,
				WLAN_EID_RRM_ENABLED_CAPABILITIES);
	if (!rrm_ie || !(wpa_s->current_bss->caps & IEEE80211_CAP_RRM) ||
	    !(rrm_ie[2] & WLAN_RRM_CAPS_NEIGHBOR_REPORT)) {
		FUNC3(MSG_DEBUG,
			   "RRM: No network support for Neighbor Report.");
		return -EOPNOTSUPP;
	}

	/* Refuse if there's a live request */
	if (wpa_s->rrm.notify_neighbor_rep) {
		FUNC3(MSG_DEBUG,
			   "RRM: Currently handling previous Neighbor Report.");
		return -EBUSY;
	}

	/* 3 = action category + action code + dialog token */
	buf = FUNC5(3 + (ssid ? 2 + ssid->ssid_len : 0) +
			   (lci ? 2 + MEASURE_REQUEST_LCI_LEN : 0) +
			   (civic ? 2 + MEASURE_REQUEST_CIVIC_LEN : 0));
	if (buf == NULL) {
		FUNC3(MSG_DEBUG,
			   "RRM: Failed to allocate Neighbor Report Request");
		return -ENOMEM;
	}

	FUNC3(MSG_DEBUG, "RRM: Neighbor report request (for %s), token=%d",
		   (ssid ? FUNC4(ssid->ssid, ssid->ssid_len) : ""),
		   wpa_s->rrm.next_neighbor_rep_token);

	FUNC11(buf, WLAN_ACTION_RADIO_MEASUREMENT);
	FUNC11(buf, WLAN_RRM_NEIGHBOR_REPORT_REQUEST);
	FUNC11(buf, wpa_s->rrm.next_neighbor_rep_token);
	if (ssid) {
		FUNC11(buf, WLAN_EID_SSID);
		FUNC11(buf, ssid->ssid_len);
		FUNC9(buf, ssid->ssid, ssid->ssid_len);
	}

	if (lci) {
		/* IEEE P802.11-REVmc/D5.0 9.4.2.21 */
		FUNC11(buf, WLAN_EID_MEASURE_REQUEST);
		FUNC11(buf, MEASURE_REQUEST_LCI_LEN);

		/*
		 * Measurement token; nonzero number that is unique among the
		 * Measurement Request elements in a particular frame.
		 */
		FUNC11(buf, 1); /* Measurement Token */

		/*
		 * Parallel, Enable, Request, and Report bits are 0, Duration is
		 * reserved.
		 */
		FUNC11(buf, 0); /* Measurement Request Mode */
		FUNC11(buf, MEASURE_TYPE_LCI); /* Measurement Type */

		/* IEEE P802.11-REVmc/D5.0 9.4.2.21.10 - LCI request */
		/* Location Subject */
		FUNC11(buf, LOCATION_SUBJECT_REMOTE);

		/* Optional Subelements */
		/*
		 * IEEE P802.11-REVmc/D5.0 Figure 9-170
		 * The Maximum Age subelement is required, otherwise the AP can
		 * send only data that was determined after receiving the
		 * request. Setting it here to unlimited age.
		 */
		FUNC11(buf, LCI_REQ_SUBELEM_MAX_AGE);
		FUNC11(buf, 2);
		FUNC10(buf, 0xffff);
	}

	if (civic) {
		/* IEEE P802.11-REVmc/D5.0 9.4.2.21 */
		FUNC11(buf, WLAN_EID_MEASURE_REQUEST);
		FUNC11(buf, MEASURE_REQUEST_CIVIC_LEN);

		/*
		 * Measurement token; nonzero number that is unique among the
		 * Measurement Request elements in a particular frame.
		 */
		FUNC11(buf, 2); /* Measurement Token */

		/*
		 * Parallel, Enable, Request, and Report bits are 0, Duration is
		 * reserved.
		 */
		FUNC11(buf, 0); /* Measurement Request Mode */
		/* Measurement Type */
		FUNC11(buf, MEASURE_TYPE_LOCATION_CIVIC);

		/* IEEE P802.11-REVmc/D5.0 9.4.2.21.14:
		 * Location Civic request */
		/* Location Subject */
		FUNC11(buf, LOCATION_SUBJECT_REMOTE);
		FUNC11(buf, 0); /* Civic Location Type: IETF RFC 4776 */
		/* Location Service Interval Units: Seconds */
		FUNC11(buf, 0);
		/* Location Service Interval: 0 - Only one report is requested
		 */
		FUNC10(buf, 0);
		/* No optional subelements */
	}

	wpa_s->rrm.next_neighbor_rep_token++;

	if (FUNC2(wpa_s, wpa_s->assoc_freq, 0, wpa_s->bssid,
				wpa_s->own_addr, wpa_s->bssid,
				FUNC7(buf), FUNC8(buf), 0) < 0) {
		FUNC3(MSG_DEBUG,
			   "RRM: Failed to send Neighbor Report Request");
		FUNC6(buf);
		return -ECANCELED;
	}

	wpa_s->rrm.neighbor_rep_cb_ctx = cb_ctx;
	wpa_s->rrm.notify_neighbor_rep = cb;
	FUNC0(RRM_NEIGHBOR_REPORT_TIMEOUT, 0,
			       wpas_rrm_neighbor_rep_timeout_handler,
			       &wpa_s->rrm, NULL);

	FUNC6(buf);
	return 0;
}