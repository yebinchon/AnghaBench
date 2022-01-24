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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct sta_info {int flags; int* rrm_enabled_capa; } ;
struct hostapd_data {int lci_req_active; int lci_req_token; TYPE_1__* iface; } ;
struct TYPE_2__ {int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOSTAPD_RRM_REQUEST_TIMEOUT ; 
 int LCI_REQ_SUBELEM_MAX_AGE ; 
 int LOCATION_SUBJECT_REMOTE ; 
 int MEASURE_TYPE_LCI ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int WLAN_ACTION_RADIO_MEASUREMENT ; 
 int WLAN_EID_MEASURE_REQUEST ; 
 int WLAN_RRM_CAPS_LCI_MEASUREMENT ; 
 int WLAN_RRM_RADIO_MEASUREMENT_REQUEST ; 
 int WLAN_STA_AUTHORIZED ; 
 struct sta_info* FUNC0 (struct hostapd_data*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hostapd_lci_rep_timeout_handler ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,int) ; 

int FUNC11(struct hostapd_data *hapd, const u8 *addr)
{
	struct wpabuf *buf;
	struct sta_info *sta = FUNC0(hapd, addr);
	int ret;

	if (!sta || !(sta->flags & WLAN_STA_AUTHORIZED)) {
		FUNC4(MSG_INFO,
			   "Request LCI: Destination address is not connected");
		return -1;
	}

	if (!(sta->rrm_enabled_capa[1] & WLAN_RRM_CAPS_LCI_MEASUREMENT)) {
		FUNC4(MSG_INFO,
			   "Request LCI: Station does not support LCI in RRM");
		return -1;
	}

	if (hapd->lci_req_active) {
		FUNC4(MSG_DEBUG,
			   "Request LCI: LCI request is already in process, overriding");
		hapd->lci_req_active = 0;
		FUNC1(hostapd_lci_rep_timeout_handler, hapd,
				     NULL);
	}

	/* Measurement request (5) + Measurement element with LCI (10) */
	buf = FUNC5(5 + 10);
	if (!buf)
		return -1;

	hapd->lci_req_token++;
	/* For wraparounds - the token must be nonzero */
	if (!hapd->lci_req_token)
		hapd->lci_req_token++;

	FUNC10(buf, WLAN_ACTION_RADIO_MEASUREMENT);
	FUNC10(buf, WLAN_RRM_RADIO_MEASUREMENT_REQUEST);
	FUNC10(buf, hapd->lci_req_token);
	FUNC9(buf, 0); /* Number of repetitions */

	FUNC10(buf, WLAN_EID_MEASURE_REQUEST);
	FUNC10(buf, 3 + 1 + 4);

	FUNC10(buf, 1); /* Measurement Token */
	/*
	 * Parallel and Enable bits are 0, Duration, Request, and Report are
	 * reserved.
	 */
	FUNC10(buf, 0);
	FUNC10(buf, MEASURE_TYPE_LCI);

	FUNC10(buf, LOCATION_SUBJECT_REMOTE);

	FUNC10(buf, LCI_REQ_SUBELEM_MAX_AGE);
	FUNC10(buf, 2);
	FUNC9(buf, 0xffff);

	ret = FUNC3(hapd, hapd->iface->freq, 0, addr,
				      FUNC7(buf), FUNC8(buf));
	FUNC6(buf);
	if (ret)
		return ret;

	hapd->lci_req_active = 1;

	FUNC2(HOSTAPD_RRM_REQUEST_TIMEOUT, 0,
			       hostapd_lci_rep_timeout_handler, hapd, NULL);

	return 0;
}