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
struct wps_data {int dev_pw_id; struct wpabuf* dh_pubkey_e; struct wpabuf* dh_pubkey_r; scalar_t__ registrar; int /*<<< orphan*/ * dh_privkey; int /*<<< orphan*/ * dh_ctx; TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int ap_nfc_dev_pw_id; int /*<<< orphan*/ * ap_nfc_dh_pubkey; int /*<<< orphan*/ * ap_nfc_dh_privkey; scalar_t__ ap; int /*<<< orphan*/ * dh_pubkey; int /*<<< orphan*/ * dh_ctx; int /*<<< orphan*/ * dh_privkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_PUBLIC_KEY ; 
 int DEV_PW_DEFAULT ; 
 int DEV_PW_NFC_CONNECTION_HANDOVER ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ **,struct wpabuf**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*,struct wpabuf*) ; 
 struct wpabuf* FUNC12 (struct wpabuf*,int) ; 

int FUNC13(struct wps_data *wps, struct wpabuf *msg)
{
	struct wpabuf *pubkey = NULL;

	FUNC5(MSG_DEBUG, "WPS:  * Public Key");
	FUNC6(wps->dh_privkey);
	wps->dh_privkey = NULL;
	if (wps->dev_pw_id != DEV_PW_DEFAULT && wps->wps->dh_privkey &&
	    wps->wps->dh_ctx) {
		FUNC5(MSG_DEBUG, "WPS: Using pre-configured DH keys");
		if (wps->wps->dh_pubkey == NULL) {
			FUNC5(MSG_DEBUG,
				   "WPS: wps->wps->dh_pubkey == NULL");
			return -1;
		}
		wps->dh_privkey = FUNC7(wps->wps->dh_privkey);
		wps->dh_ctx = wps->wps->dh_ctx;
		wps->wps->dh_ctx = NULL;
		pubkey = FUNC7(wps->wps->dh_pubkey);
#ifdef CONFIG_WPS_NFC
	} else if ((wps->dev_pw_id >= 0x10 ||
		    wps->dev_pw_id == DEV_PW_NFC_CONNECTION_HANDOVER) &&
		   (wps->wps->ap ||
		    (wps->wps->ap_nfc_dh_pubkey &&
		     wps->wps->ap_nfc_dev_pw_id ==
		     DEV_PW_NFC_CONNECTION_HANDOVER &&
		     wps->dev_pw_id == DEV_PW_NFC_CONNECTION_HANDOVER)) &&
		   (wps->dev_pw_id == wps->wps->ap_nfc_dev_pw_id ||
		    wps->wps->ap_nfc_dh_pubkey)) {
		wpa_printf(MSG_DEBUG, "WPS: Using NFC password token DH keys");
		if (wps->wps->ap_nfc_dh_privkey == NULL) {
			wpa_printf(MSG_DEBUG,
				   "WPS: wps->wps->ap_nfc_dh_privkey == NULL");
			return -1;
		}
		if (wps->wps->ap_nfc_dh_pubkey == NULL) {
			wpa_printf(MSG_DEBUG,
				   "WPS: wps->wps->ap_nfc_dh_pubkey == NULL");
			return -1;
		}
		wps->dh_privkey = wpabuf_dup(wps->wps->ap_nfc_dh_privkey);
		pubkey = wpabuf_dup(wps->wps->ap_nfc_dh_pubkey);
		if (wps->dh_privkey && pubkey)
			wps->dh_ctx = dh5_init_fixed(wps->dh_privkey, pubkey);
#endif /* CONFIG_WPS_NFC */
	} else {
		FUNC5(MSG_DEBUG, "WPS: Generate new DH keys");
		FUNC0(wps->dh_ctx);
		wps->dh_ctx = FUNC1(&wps->dh_privkey, &pubkey);
		pubkey = FUNC12(pubkey, 192);
	}
	if (wps->dh_ctx == NULL || wps->dh_privkey == NULL || pubkey == NULL) {
		FUNC5(MSG_DEBUG, "WPS: Failed to initialize "
			   "Diffie-Hellman handshake");
		FUNC8(pubkey);
		return -1;
	}
	FUNC4(MSG_DEBUG, "WPS: DH Private Key", wps->dh_privkey);
	FUNC3(MSG_DEBUG, "WPS: DH own Public Key", pubkey);

	FUNC10(msg, ATTR_PUBLIC_KEY);
	FUNC10(msg, FUNC9(pubkey));
	FUNC11(msg, pubkey);

	if (wps->registrar) {
		FUNC8(wps->dh_pubkey_r);
		wps->dh_pubkey_r = pubkey;
	} else {
		FUNC8(wps->dh_pubkey_e);
		wps->dh_pubkey_e = pubkey;
	}

	return 0;
}