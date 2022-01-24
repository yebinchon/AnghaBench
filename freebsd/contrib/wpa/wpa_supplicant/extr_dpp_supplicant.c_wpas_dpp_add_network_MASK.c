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
struct wpa_supplicant {int drv_flags; int /*<<< orphan*/  conf; } ;
struct wpa_ssid {int disabled; void* ssid_len; int key_mgmt; int export_keys; int /*<<< orphan*/  id; void* psk; int /*<<< orphan*/  psk_set; int /*<<< orphan*/  ieee80211w; int /*<<< orphan*/  dpp_netaccesskey_expiry; void* dpp_netaccesskey_len; void* dpp_netaccesskey; void* dpp_csign_len; void* dpp_csign; int /*<<< orphan*/  dpp_connector; void* ssid; } ;
struct wpa_driver_capa {int key_mgmt; } ;
struct dpp_authentication {scalar_t__ akm; void* ssid_len; int /*<<< orphan*/  psk; int /*<<< orphan*/  psk_set; scalar_t__* passphrase; scalar_t__ connector; int /*<<< orphan*/  net_access_key_expiry; scalar_t__ net_access_key; scalar_t__ c_sign_key; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 scalar_t__ DPP_AKM_SAE ; 
 int /*<<< orphan*/  MGMT_FRAME_PROTECTION_OPTIONAL ; 
 int /*<<< orphan*/  MGMT_FRAME_PROTECTION_REQUIRED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 void* PMK_LEN ; 
 int WPA_DRIVER_CAPA_KEY_MGMT_SAE ; 
 int WPA_DRIVER_FLAGS_SAE ; 
 int WPA_KEY_MGMT_DPP ; 
 int WPA_KEY_MGMT_FT_PSK ; 
 int WPA_KEY_MGMT_FT_SAE ; 
 int WPA_KEY_MGMT_PSK ; 
 int WPA_KEY_MGMT_PSK_SHA256 ; 
 int WPA_KEY_MGMT_SAE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct wpa_ssid* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_ssid*) ; 
 scalar_t__ FUNC8 (struct wpa_ssid*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_ssid*) ; 
 int FUNC10 (struct wpa_supplicant*,struct wpa_driver_capa*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 void* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct wpa_supplicant*,struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC15 (struct wpa_supplicant*,struct wpa_ssid*) ; 

__attribute__((used)) static struct wpa_ssid * FUNC16(struct wpa_supplicant *wpa_s,
					      struct dpp_authentication *auth)
{
	struct wpa_ssid *ssid;

#ifdef CONFIG_DPP2
	if (auth->akm == DPP_AKM_SAE) {
#ifdef CONFIG_SAE
		struct wpa_driver_capa capa;
		int res;

		res = wpa_drv_get_capa(wpa_s, &capa);
		if (res == 0 &&
		    !(capa.key_mgmt & WPA_DRIVER_CAPA_KEY_MGMT_SAE) &&
		    !(wpa_s->drv_flags & WPA_DRIVER_FLAGS_SAE)) {
			wpa_printf(MSG_DEBUG,
				   "DPP: SAE not supported by the driver");
			return NULL;
		}
#else /* CONFIG_SAE */
		wpa_printf(MSG_DEBUG, "DPP: SAE not supported in the build");
		return NULL;
#endif /* CONFIG_SAE */
	}
#endif /* CONFIG_DPP2 */

	ssid = FUNC5(wpa_s->conf);
	if (!ssid)
		return NULL;
	FUNC14(wpa_s, ssid);
	FUNC7(ssid);
	ssid->disabled = 1;

	ssid->ssid = FUNC2(auth->ssid_len);
	if (!ssid->ssid)
		goto fail;
	FUNC3(ssid->ssid, auth->ssid, auth->ssid_len);
	ssid->ssid_len = auth->ssid_len;

	if (auth->connector) {
		ssid->key_mgmt = WPA_KEY_MGMT_DPP;
		ssid->ieee80211w = MGMT_FRAME_PROTECTION_REQUIRED;
		ssid->dpp_connector = FUNC4(auth->connector);
		if (!ssid->dpp_connector)
			goto fail;
	}

	if (auth->c_sign_key) {
		ssid->dpp_csign = FUNC2(FUNC13(auth->c_sign_key));
		if (!ssid->dpp_csign)
			goto fail;
		FUNC3(ssid->dpp_csign, FUNC12(auth->c_sign_key),
			  FUNC13(auth->c_sign_key));
		ssid->dpp_csign_len = FUNC13(auth->c_sign_key);
	}

	if (auth->net_access_key) {
		ssid->dpp_netaccesskey =
			FUNC2(FUNC13(auth->net_access_key));
		if (!ssid->dpp_netaccesskey)
			goto fail;
		FUNC3(ssid->dpp_netaccesskey,
			  FUNC12(auth->net_access_key),
			  FUNC13(auth->net_access_key));
		ssid->dpp_netaccesskey_len = FUNC13(auth->net_access_key);
		ssid->dpp_netaccesskey_expiry = auth->net_access_key_expiry;
	}

	if (!auth->connector || FUNC0(auth->akm) ||
	    FUNC1(auth->akm)) {
		if (!auth->connector)
			ssid->key_mgmt = 0;
		if (FUNC0(auth->akm))
			ssid->key_mgmt |= WPA_KEY_MGMT_PSK |
				WPA_KEY_MGMT_PSK_SHA256 | WPA_KEY_MGMT_FT_PSK;
		if (FUNC1(auth->akm))
			ssid->key_mgmt |= WPA_KEY_MGMT_SAE |
				WPA_KEY_MGMT_FT_SAE;
		ssid->ieee80211w = MGMT_FRAME_PROTECTION_OPTIONAL;
		if (auth->passphrase[0]) {
			if (FUNC8(ssid, "psk",
						  auth->passphrase) < 0)
				goto fail;
			FUNC9(ssid);
			ssid->export_keys = 1;
		} else {
			ssid->psk_set = auth->psk_set;
			FUNC3(ssid->psk, auth->psk, PMK_LEN);
		}
	}

	return ssid;
fail:
	FUNC15(wpa_s, ssid);
	FUNC6(wpa_s->conf, ssid->id);
	return NULL;
}