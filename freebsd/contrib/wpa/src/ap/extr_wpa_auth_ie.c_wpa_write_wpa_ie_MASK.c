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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct wpa_ie_hdr {int len; int /*<<< orphan*/ * version; int /*<<< orphan*/ * oui; int /*<<< orphan*/  elem_id; } ;
struct wpa_auth_config {int wpa_group; int wpa_pairwise; int wpa_key_mgmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  WLAN_EID_VENDOR_SPECIFIC ; 
 scalar_t__ WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X ; 
 scalar_t__ WPA_AUTH_KEY_MGMT_UNSPEC_802_1X ; 
 int WPA_KEY_MGMT_IEEE8021X ; 
 int WPA_KEY_MGMT_PSK ; 
 scalar_t__ WPA_OUI_TYPE ; 
 int /*<<< orphan*/  WPA_PROTO_WPA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int WPA_SELECTOR_LEN ; 
 int WPA_VERSION ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5(struct wpa_auth_config *conf, u8 *buf, size_t len)
{
	struct wpa_ie_hdr *hdr;
	int num_suites;
	u8 *pos, *count;
	u32 suite;

	hdr = (struct wpa_ie_hdr *) buf;
	hdr->elem_id = WLAN_EID_VENDOR_SPECIFIC;
	FUNC0(hdr->oui, WPA_OUI_TYPE);
	FUNC1(hdr->version, WPA_VERSION);
	pos = (u8 *) (hdr + 1);

	suite = FUNC3(WPA_PROTO_WPA, conf->wpa_group);
	if (suite == 0) {
		FUNC4(MSG_DEBUG, "Invalid group cipher (%d).",
			   conf->wpa_group);
		return -1;
	}
	FUNC0(pos, suite);
	pos += WPA_SELECTOR_LEN;

	count = pos;
	pos += 2;

	num_suites = FUNC2(pos, conf->wpa_pairwise);
	if (num_suites == 0) {
		FUNC4(MSG_DEBUG, "Invalid pairwise cipher (%d).",
			   conf->wpa_pairwise);
		return -1;
	}
	pos += num_suites * WPA_SELECTOR_LEN;
	FUNC1(count, num_suites);

	num_suites = 0;
	count = pos;
	pos += 2;

	if (conf->wpa_key_mgmt & WPA_KEY_MGMT_IEEE8021X) {
		FUNC0(pos, WPA_AUTH_KEY_MGMT_UNSPEC_802_1X);
		pos += WPA_SELECTOR_LEN;
		num_suites++;
	}
	if (conf->wpa_key_mgmt & WPA_KEY_MGMT_PSK) {
		FUNC0(pos, WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X);
		pos += WPA_SELECTOR_LEN;
		num_suites++;
	}

	if (num_suites == 0) {
		FUNC4(MSG_DEBUG, "Invalid key management type (%d).",
			   conf->wpa_key_mgmt);
		return -1;
	}
	FUNC1(count, num_suites);

	/* WPA Capabilities; use defaults, so no need to include it */

	hdr->len = (pos - buf) - 2;

	return pos - buf;
}