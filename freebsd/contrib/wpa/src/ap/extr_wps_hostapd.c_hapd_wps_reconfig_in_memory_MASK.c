#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wps_credential {int ssid_len; int auth_type; int encr_type; int key_len; scalar_t__ key; scalar_t__ ssid; } ;
struct hostapd_wpa_psk {int dummy; } ;
struct hostapd_data {int /*<<< orphan*/  iface; struct hostapd_bss_config* conf; TYPE_1__* iconf; } ;
struct TYPE_5__ {int ssid_len; int ssid_set; int /*<<< orphan*/ * wpa_passphrase; TYPE_3__* wpa_psk; int /*<<< orphan*/ * ssid; } ;
struct hostapd_bss_config {int wps_state; int wpa; scalar_t__ ieee80211w; int sae_require_mfp; int auth_algs; TYPE_2__ ssid; int /*<<< orphan*/  wpa_key_mgmt; scalar_t__ wps_cred_add_sae; int /*<<< orphan*/  rsn_pairwise; int /*<<< orphan*/  wpa_pairwise; int /*<<< orphan*/  wpa_group; } ;
struct TYPE_6__ {int group; int /*<<< orphan*/  psk; } ;
struct TYPE_4__ {scalar_t__ hw_mode; } ;

/* Variables and functions */
 scalar_t__ HOSTAPD_MODE_IEEE80211AD ; 
 scalar_t__ MGMT_FRAME_PROTECTION_OPTIONAL ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ NO_MGMT_FRAME_PROTECTION ; 
 int PMK_LEN ; 
 int SSID_MAX_LEN ; 
 int /*<<< orphan*/  WPA_CIPHER_CCMP ; 
 int /*<<< orphan*/  WPA_CIPHER_GCMP ; 
 int /*<<< orphan*/  WPA_CIPHER_TKIP ; 
 int /*<<< orphan*/  WPA_KEY_MGMT_IEEE8021X ; 
 int /*<<< orphan*/  WPA_KEY_MGMT_PSK ; 
 int /*<<< orphan*/  WPA_KEY_MGMT_SAE ; 
 int WPS_AUTH_WPA ; 
 int WPS_AUTH_WPA2 ; 
 int WPS_AUTH_WPA2PSK ; 
 int WPS_AUTH_WPAPSK ; 
 int WPS_ENCR_AES ; 
 int WPS_ENCR_TKIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wps_reload_config ; 

__attribute__((used)) static int FUNC8(struct hostapd_data *hapd,
				       const struct wps_credential *cred)
{
	struct hostapd_bss_config *bss = hapd->conf;

	FUNC6(MSG_DEBUG, "WPS: Updating in-memory configuration");

	bss->wps_state = 2;
	if (cred->ssid_len <= SSID_MAX_LEN) {
		FUNC4(bss->ssid.ssid, cred->ssid, cred->ssid_len);
		bss->ssid.ssid_len = cred->ssid_len;
		bss->ssid.ssid_set = 1;
	}

	if ((cred->auth_type & (WPS_AUTH_WPA2 | WPS_AUTH_WPA2PSK)) &&
	    (cred->auth_type & (WPS_AUTH_WPA | WPS_AUTH_WPAPSK)))
		bss->wpa = 3;
	else if (cred->auth_type & (WPS_AUTH_WPA2 | WPS_AUTH_WPA2PSK))
		bss->wpa = 2;
	else if (cred->auth_type & (WPS_AUTH_WPA | WPS_AUTH_WPAPSK))
		bss->wpa = 1;
	else
		bss->wpa = 0;

	if (bss->wpa) {
		if (cred->auth_type & (WPS_AUTH_WPA2 | WPS_AUTH_WPA))
			bss->wpa_key_mgmt = WPA_KEY_MGMT_IEEE8021X;
		if (cred->auth_type & (WPS_AUTH_WPA2PSK | WPS_AUTH_WPAPSK))
			bss->wpa_key_mgmt = WPA_KEY_MGMT_PSK;

		bss->wpa_pairwise = 0;
		if (cred->encr_type & WPS_ENCR_AES) {
			if (hapd->iconf->hw_mode == HOSTAPD_MODE_IEEE80211AD)
				bss->wpa_pairwise |= WPA_CIPHER_GCMP;
			else
				bss->wpa_pairwise |= WPA_CIPHER_CCMP;
		}
		if (cred->encr_type & WPS_ENCR_TKIP)
			bss->wpa_pairwise |= WPA_CIPHER_TKIP;
		bss->rsn_pairwise = bss->wpa_pairwise;
		bss->wpa_group = FUNC7(bss->wpa,
							    bss->wpa_pairwise,
							    bss->rsn_pairwise);

		if (hapd->conf->wps_cred_add_sae &&
		    (cred->auth_type & WPS_AUTH_WPA2PSK) &&
		    cred->key_len != 2 * PMK_LEN) {
			bss->wpa_key_mgmt |= WPA_KEY_MGMT_SAE;
#ifdef CONFIG_IEEE80211W
			if (bss->ieee80211w == NO_MGMT_FRAME_PROTECTION)
				bss->ieee80211w =
					MGMT_FRAME_PROTECTION_OPTIONAL;
			bss->sae_require_mfp = 1;
#endif /* CONFIG_IEEE80211W */
		}

		if (cred->key_len >= 8 && cred->key_len < 64) {
			FUNC3(bss->ssid.wpa_passphrase);
			bss->ssid.wpa_passphrase = FUNC5(cred->key_len + 1);
			if (bss->ssid.wpa_passphrase)
				FUNC4(bss->ssid.wpa_passphrase, cred->key,
					  cred->key_len);
			FUNC2(&bss->ssid.wpa_psk);
		} else if (cred->key_len == 64) {
			FUNC2(&bss->ssid.wpa_psk);
			bss->ssid.wpa_psk =
				FUNC5(sizeof(struct hostapd_wpa_psk));
			if (bss->ssid.wpa_psk &&
			    FUNC1((const char *) cred->key,
				       bss->ssid.wpa_psk->psk, PMK_LEN) == 0) {
				bss->ssid.wpa_psk->group = 1;
				FUNC3(bss->ssid.wpa_passphrase);
				bss->ssid.wpa_passphrase = NULL;
			}
		}
		bss->auth_algs = 1;
	} else {
		/*
		 * WPS 2.0 does not allow WEP to be configured, so no need to
		 * process that option here either.
		 */
		bss->auth_algs = 1;
	}

	/* Schedule configuration reload after short period of time to allow
	 * EAP-WSC to be finished.
	 */
	FUNC0(0, 100000, wps_reload_config, hapd->iface,
			       NULL);

	return 0;
}