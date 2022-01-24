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
struct wpa_ie_hdr {int len; int /*<<< orphan*/  version; int /*<<< orphan*/ * oui; int /*<<< orphan*/  elem_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  WLAN_EID_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ WPA_AUTH_KEY_MGMT_CCKM ; 
 scalar_t__ WPA_AUTH_KEY_MGMT_NONE ; 
 scalar_t__ WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X ; 
 scalar_t__ WPA_AUTH_KEY_MGMT_UNSPEC_802_1X ; 
 int WPA_CIPHER_NONE ; 
 int WPA_KEY_MGMT_CCKM ; 
 int WPA_KEY_MGMT_IEEE8021X ; 
 int WPA_KEY_MGMT_PSK ; 
 int WPA_KEY_MGMT_WPA_NONE ; 
 scalar_t__ WPA_OUI_TYPE ; 
 int /*<<< orphan*/  WPA_PROTO_WPA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int WPA_SELECTOR_LEN ; 
 int /*<<< orphan*/  WPA_VERSION ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC6(u8 *wpa_ie, size_t wpa_ie_len,
			      int pairwise_cipher, int group_cipher,
			      int key_mgmt)
{
	u8 *pos;
	struct wpa_ie_hdr *hdr;
	u32 suite;

	if (wpa_ie_len < sizeof(*hdr) + WPA_SELECTOR_LEN +
	    2 + WPA_SELECTOR_LEN + 2 + WPA_SELECTOR_LEN)
		return -1;

	hdr = (struct wpa_ie_hdr *) wpa_ie;
	hdr->elem_id = WLAN_EID_VENDOR_SPECIFIC;
	FUNC0(hdr->oui, WPA_OUI_TYPE);
	FUNC2(hdr->version, WPA_VERSION);
	pos = (u8 *) (hdr + 1);

	suite = FUNC3(WPA_PROTO_WPA, group_cipher);
	if (suite == 0) {
		FUNC5(MSG_WARNING, "Invalid group cipher (%d).",
			   group_cipher);
		return -1;
	}
	FUNC0(pos, suite);
	pos += WPA_SELECTOR_LEN;

	*pos++ = 1;
	*pos++ = 0;
	suite = FUNC3(WPA_PROTO_WPA, pairwise_cipher);
	if (suite == 0 ||
	    (!FUNC4(pairwise_cipher) &&
	     pairwise_cipher != WPA_CIPHER_NONE)) {
		FUNC5(MSG_WARNING, "Invalid pairwise cipher (%d).",
			   pairwise_cipher);
		return -1;
	}
	FUNC0(pos, suite);
	pos += WPA_SELECTOR_LEN;

	*pos++ = 1;
	*pos++ = 0;
	if (key_mgmt == WPA_KEY_MGMT_IEEE8021X) {
		FUNC0(pos, WPA_AUTH_KEY_MGMT_UNSPEC_802_1X);
	} else if (key_mgmt == WPA_KEY_MGMT_PSK) {
		FUNC0(pos, WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X);
	} else if (key_mgmt == WPA_KEY_MGMT_WPA_NONE) {
		FUNC0(pos, WPA_AUTH_KEY_MGMT_NONE);
	} else if (key_mgmt == WPA_KEY_MGMT_CCKM) {
		FUNC0(pos, WPA_AUTH_KEY_MGMT_CCKM);
	} else {
		FUNC5(MSG_WARNING, "Invalid key management type (%d).",
			   key_mgmt);
		return -1;
	}
	pos += WPA_SELECTOR_LEN;

	/* WPA Capabilities; use defaults, so no need to include it */

	hdr->len = (pos - wpa_ie) - 2;

	FUNC1((size_t) (pos - wpa_ie) <= wpa_ie_len);

	return pos - wpa_ie;
}