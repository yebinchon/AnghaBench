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
struct wpa_supplicant {scalar_t__ wpa_state; int own_disconnect_req; scalar_t__ key_mgmt; int reassociate; int /*<<< orphan*/ * ctrl_iface; struct wpa_config* conf; int /*<<< orphan*/  wpa; int /*<<< orphan*/  eapol; scalar_t__ current_ssid; int /*<<< orphan*/ * confanother; int /*<<< orphan*/ * confname; } ;
struct wpa_config {unsigned int changed_parameters; int ap_scan; int /*<<< orphan*/  fast_reauth; scalar_t__ ctrl_interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 scalar_t__ WPA_AUTHENTICATING ; 
 scalar_t__ WPA_KEY_MGMT_DPP ; 
 scalar_t__ WPA_KEY_MGMT_OWE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_config*) ; 
 struct wpa_config* FUNC6 (int /*<<< orphan*/ *,struct wpa_config*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC16 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC18 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC20 (struct wpa_supplicant*) ; 

int FUNC21(struct wpa_supplicant *wpa_s)
{
	struct wpa_config *conf;
	int reconf_ctrl;
	int old_ap_scan;

	if (wpa_s->confname == NULL)
		return -1;
	conf = FUNC6(wpa_s->confname, NULL);
	if (conf == NULL) {
		FUNC9(wpa_s, MSG_ERROR, "Failed to parse the configuration "
			"file '%s' - exiting", wpa_s->confname);
		return -1;
	}
	if (wpa_s->confanother &&
	    !FUNC6(wpa_s->confanother, conf)) {
		FUNC9(wpa_s, MSG_ERROR,
			"Failed to parse the configuration file '%s' - exiting",
			wpa_s->confanother);
		return -1;
	}

	conf->changed_parameters = (unsigned int) -1;

	reconf_ctrl = !!conf->ctrl_interface != !!wpa_s->conf->ctrl_interface
		|| (conf->ctrl_interface && wpa_s->conf->ctrl_interface &&
		    FUNC3(conf->ctrl_interface,
			      wpa_s->conf->ctrl_interface) != 0);

	if (reconf_ctrl && wpa_s->ctrl_iface) {
		FUNC14(wpa_s->ctrl_iface);
		wpa_s->ctrl_iface = NULL;
	}

	FUNC0(wpa_s->eapol);
	if (wpa_s->current_ssid) {
		if (wpa_s->wpa_state >= WPA_AUTHENTICATING)
			wpa_s->own_disconnect_req = 1;
		FUNC16(wpa_s,
					      WLAN_REASON_DEAUTH_LEAVING);
	}

	/*
	 * TODO: should notify EAPOL SM about changes in opensc_engine_path,
	 * pkcs11_engine_path, pkcs11_module_path, openssl_ciphers.
	 */
	if (FUNC8(wpa_s->key_mgmt) ||
	    wpa_s->key_mgmt == WPA_KEY_MGMT_OWE ||
	    wpa_s->key_mgmt == WPA_KEY_MGMT_DPP) {
		/*
		 * Clear forced success to clear EAP state for next
		 * authentication.
		 */
		FUNC2(wpa_s->eapol, FALSE);
	}
	FUNC1(wpa_s->eapol, NULL, NULL);
	FUNC11(wpa_s->wpa, NULL);
	FUNC10(wpa_s->wpa, NULL);
	FUNC12(wpa_s->wpa, wpa_s->conf->fast_reauth);
	FUNC4(wpa_s->wpa);

	old_ap_scan = wpa_s->conf->ap_scan;
	FUNC5(wpa_s->conf);
	wpa_s->conf = conf;
	if (old_ap_scan != wpa_s->conf->ap_scan)
		FUNC20(wpa_s);

	if (reconf_ctrl)
		wpa_s->ctrl_iface = FUNC15(wpa_s);

	FUNC19(wpa_s);

	FUNC13(wpa_s);
	if (FUNC17(wpa_s)) {
		wpa_s->reassociate = 1;
		FUNC18(wpa_s, 0, 0);
	}
	FUNC7(wpa_s, MSG_DEBUG, "Reconfiguration completed");
	return 0;
}