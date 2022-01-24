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
typedef  char u8 ;
struct wps_registrar {int multi_ap_backhaul_ssid_len; char* multi_ap_backhaul_ssid; char* multi_ap_backhaul_network_key; int multi_ap_backhaul_network_key_len; struct wpabuf* extra_cred; int /*<<< orphan*/  force_per_enrollee_psk; int /*<<< orphan*/  disable_auto_conf; scalar_t__ skip_cred_build; } ;
struct wps_credential {int ssid_len; int auth_type; int encr_type; int key_len; struct wps_credential* mac_addr; struct wps_credential* key; struct wps_credential* ssid; } ;
struct TYPE_4__ {scalar_t__ multi_ap_ext; } ;
struct wps_data {char* use_cred; char* mac_addr_e; int auth_type; int encr_type; char* new_psk; int new_psk_len; TYPE_1__* wps; struct wps_credential cred; scalar_t__ use_psk_key; TYPE_2__ peer_dev; } ;
struct wpabuf {int dummy; } ;
typedef  int /*<<< orphan*/  r ;
typedef  int /*<<< orphan*/  hex ;
typedef  int /*<<< orphan*/  dummy ;
struct TYPE_3__ {char* ssid; int ssid_len; int encr_types_rsn; int encr_types_wpa; scalar_t__ wps_state; char* psk; char* network_key; int network_key_len; struct wps_registrar* registrar; scalar_t__ psk_set; scalar_t__ ap; int /*<<< orphan*/  encr_types; int /*<<< orphan*/  auth_types; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_CRED ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ MULTI_AP_BACKHAUL_STA ; 
 int WPS_AUTH_OPEN ; 
 int WPS_AUTH_WPA2PSK ; 
 int WPS_AUTH_WPAPSK ; 
 int WPS_ENCR_AES ; 
 int WPS_ENCR_NONE ; 
 int WPS_ENCR_TKIP ; 
 int WPS_ENCR_WEP ; 
 scalar_t__ WPS_STATE_NOT_CONFIGURED ; 
 char* FUNC0 (char*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct wps_credential*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wps_credential*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char*,int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int) ; 
 struct wpabuf* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC16 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct wpabuf*,struct wpabuf*) ; 
 scalar_t__ FUNC18 (struct wpabuf*,struct wps_credential*) ; 
 scalar_t__ wps_testing_dummy_cred ; 

int FUNC19(struct wps_data *wps, struct wpabuf *msg)
{
	struct wpabuf *cred;
	struct wps_registrar *reg = wps->wps->registrar;

	if (wps->wps->registrar->skip_cred_build)
		goto skip_cred_build;

	FUNC10(MSG_DEBUG, "WPS:  * Credential");
	if (wps->use_cred) {
		FUNC3(&wps->cred, wps->use_cred, sizeof(wps->cred));
		goto use_provided;
	}
	FUNC4(&wps->cred, 0, sizeof(wps->cred));

	if (wps->peer_dev.multi_ap_ext == MULTI_AP_BACKHAUL_STA &&
	    reg->multi_ap_backhaul_ssid_len) {
		FUNC10(MSG_DEBUG, "WPS: Use backhaul STA credentials");
		FUNC3(wps->cred.ssid, reg->multi_ap_backhaul_ssid,
			  reg->multi_ap_backhaul_ssid_len);
		wps->cred.ssid_len = reg->multi_ap_backhaul_ssid_len;
		/* Backhaul is always WPA2PSK */
		wps->cred.auth_type = WPS_AUTH_WPA2PSK;
		wps->cred.encr_type = WPS_ENCR_AES;
		/* Set MAC address in the Credential to be the Enrollee's MAC
		 * address
		 */
		FUNC3(wps->cred.mac_addr, wps->mac_addr_e, ETH_ALEN);
		if (reg->multi_ap_backhaul_network_key) {
			FUNC3(wps->cred.key,
				  reg->multi_ap_backhaul_network_key,
				  reg->multi_ap_backhaul_network_key_len);
			wps->cred.key_len =
				reg->multi_ap_backhaul_network_key_len;
		}
		goto use_provided;
	}

	FUNC3(wps->cred.ssid, wps->wps->ssid, wps->wps->ssid_len);
	wps->cred.ssid_len = wps->wps->ssid_len;

	/* Select the best authentication and encryption type */
	FUNC10(MSG_DEBUG,
		   "WPS: Own auth types 0x%x - masked Enrollee auth types 0x%x",
		   wps->wps->auth_types, wps->auth_type);
	if (wps->auth_type & WPS_AUTH_WPA2PSK)
		wps->auth_type = WPS_AUTH_WPA2PSK;
	else if (wps->auth_type & WPS_AUTH_WPAPSK)
		wps->auth_type = WPS_AUTH_WPAPSK;
	else if (wps->auth_type & WPS_AUTH_OPEN)
		wps->auth_type = WPS_AUTH_OPEN;
	else {
		FUNC10(MSG_DEBUG, "WPS: Unsupported auth_type 0x%x",
			   wps->auth_type);
		return -1;
	}
	wps->cred.auth_type = wps->auth_type;

	FUNC10(MSG_DEBUG,
		   "WPS: Own encr types 0x%x (rsn: 0x%x, wpa: 0x%x) - masked Enrollee encr types 0x%x",
		   wps->wps->encr_types, wps->wps->encr_types_rsn,
		   wps->wps->encr_types_wpa, wps->encr_type);
	if (wps->wps->ap && wps->auth_type == WPS_AUTH_WPA2PSK)
		wps->encr_type &= wps->wps->encr_types_rsn;
	else if (wps->wps->ap && wps->auth_type == WPS_AUTH_WPAPSK)
		wps->encr_type &= wps->wps->encr_types_wpa;
	if (wps->auth_type == WPS_AUTH_WPA2PSK ||
	    wps->auth_type == WPS_AUTH_WPAPSK) {
		if (wps->encr_type & WPS_ENCR_AES)
			wps->encr_type = WPS_ENCR_AES;
		else if (wps->encr_type & WPS_ENCR_TKIP)
			wps->encr_type = WPS_ENCR_TKIP;
		else {
			FUNC10(MSG_DEBUG, "WPS: No suitable encryption "
				   "type for WPA/WPA2");
			return -1;
		}
	} else {
		if (wps->encr_type & WPS_ENCR_NONE)
			wps->encr_type = WPS_ENCR_NONE;
#ifdef CONFIG_TESTING_OPTIONS
		else if (wps->encr_type & WPS_ENCR_WEP)
			wps->encr_type = WPS_ENCR_WEP;
#endif /* CONFIG_TESTING_OPTIONS */
		else {
			FUNC10(MSG_DEBUG, "WPS: No suitable encryption "
				   "type for non-WPA/WPA2 mode");
			return -1;
		}
	}
	wps->cred.encr_type = wps->encr_type;
	/*
	 * Set MAC address in the Credential to be the Enrollee's MAC address
	 */
	FUNC3(wps->cred.mac_addr, wps->mac_addr_e, ETH_ALEN);

	if (wps->wps->wps_state == WPS_STATE_NOT_CONFIGURED && wps->wps->ap &&
	    !wps->wps->registrar->disable_auto_conf) {
		u8 r[16];
		/* Generate a random passphrase */
		if (FUNC6() != 1 ||
		    FUNC5(r, sizeof(r)) < 0) {
			FUNC10(MSG_INFO,
				   "WPS: Could not generate random PSK");
			return -1;
		}
		FUNC1(wps->new_psk);
		wps->new_psk = FUNC0(r, sizeof(r), &wps->new_psk_len);
		if (wps->new_psk == NULL)
			return -1;
		wps->new_psk_len--; /* remove newline */
		while (wps->new_psk_len &&
		       wps->new_psk[wps->new_psk_len - 1] == '=')
			wps->new_psk_len--;
		FUNC7(MSG_DEBUG, "WPS: Generated passphrase",
				      wps->new_psk, wps->new_psk_len);
		FUNC3(wps->cred.key, wps->new_psk, wps->new_psk_len);
		wps->cred.key_len = wps->new_psk_len;
	} else if (!wps->wps->registrar->force_per_enrollee_psk &&
		   wps->use_psk_key && wps->wps->psk_set) {
		char hex[65];
		FUNC10(MSG_DEBUG, "WPS: Use PSK format for Network Key");
		FUNC11(hex, sizeof(hex), wps->wps->psk, 32);
		FUNC3(wps->cred.key, hex, 32 * 2);
		wps->cred.key_len = 32 * 2;
	} else if (!wps->wps->registrar->force_per_enrollee_psk &&
		   wps->wps->network_key) {
		FUNC3(wps->cred.key, wps->wps->network_key,
			  wps->wps->network_key_len);
		wps->cred.key_len = wps->wps->network_key_len;
	} else if (wps->auth_type & (WPS_AUTH_WPAPSK | WPS_AUTH_WPA2PSK)) {
		char hex[65];
		/* Generate a random per-device PSK */
		FUNC1(wps->new_psk);
		wps->new_psk_len = 32;
		wps->new_psk = FUNC2(wps->new_psk_len);
		if (wps->new_psk == NULL)
			return -1;
		if (FUNC6() != 1 ||
		    FUNC5(wps->new_psk, wps->new_psk_len) < 0) {
			FUNC10(MSG_INFO,
				   "WPS: Could not generate random PSK");
			FUNC1(wps->new_psk);
			wps->new_psk = NULL;
			return -1;
		}
		FUNC9(MSG_DEBUG, "WPS: Generated per-device PSK",
				wps->new_psk, wps->new_psk_len);
		FUNC11(hex, sizeof(hex), wps->new_psk,
				 wps->new_psk_len);
		FUNC3(wps->cred.key, hex, wps->new_psk_len * 2);
		wps->cred.key_len = wps->new_psk_len * 2;
	}

use_provided:
#ifdef CONFIG_WPS_TESTING
	if (wps_testing_dummy_cred)
		cred = wpabuf_alloc(200);
	else
		cred = NULL;
	if (cred) {
		struct wps_credential dummy;
		wpa_printf(MSG_DEBUG, "WPS: Add dummy credential");
		os_memset(&dummy, 0, sizeof(dummy));
		os_memcpy(dummy.ssid, "dummy", 5);
		dummy.ssid_len = 5;
		dummy.auth_type = WPS_AUTH_WPA2PSK;
		dummy.encr_type = WPS_ENCR_AES;
		os_memcpy(dummy.key, "dummy psk", 9);
		dummy.key_len = 9;
		os_memcpy(dummy.mac_addr, wps->mac_addr_e, ETH_ALEN);
		wps_build_credential(cred, &dummy);
		wpa_hexdump_buf(MSG_DEBUG, "WPS: Dummy Credential", cred);

		wpabuf_put_be16(msg, ATTR_CRED);
		wpabuf_put_be16(msg, wpabuf_len(cred));
		wpabuf_put_buf(msg, cred);

		wpabuf_free(cred);
	}
#endif /* CONFIG_WPS_TESTING */

	cred = FUNC12(200);
	if (cred == NULL)
		return -1;

	if (FUNC18(cred, &wps->cred)) {
		FUNC13(cred);
		return -1;
	}

	FUNC16(msg, ATTR_CRED);
	FUNC16(msg, FUNC15(cred));
	FUNC17(msg, cred);
	FUNC13(cred);

skip_cred_build:
	if (wps->wps->registrar->extra_cred) {
		FUNC10(MSG_DEBUG, "WPS:  * Credential (pre-configured)");
		FUNC17(msg, wps->wps->registrar->extra_cred);
	}

	return 0;
}