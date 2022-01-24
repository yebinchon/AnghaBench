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
struct wps_parse_attr {int /*<<< orphan*/ * version2; int /*<<< orphan*/  num_cred; int /*<<< orphan*/  cred_len; int /*<<< orphan*/  cred; int /*<<< orphan*/  key_wrap_auth; int /*<<< orphan*/  encr_settings_len; int /*<<< orphan*/  encr_settings; int /*<<< orphan*/  authenticator; int /*<<< orphan*/  public_key_len; int /*<<< orphan*/  public_key; int /*<<< orphan*/  dev_password_id; int /*<<< orphan*/  uuid_r; int /*<<< orphan*/  enrollee_nonce; int /*<<< orphan*/  registrar_nonce; } ;
struct wps_data {scalar_t__ state; scalar_t__ peer_pubkey_hash_set; int /*<<< orphan*/  peer_dev; int /*<<< orphan*/  config_error; int /*<<< orphan*/ * dev_password; TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_2__ {int ap_setup_locked; scalar_t__ ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ RECV_M2 ; 
 scalar_t__ SEND_M3 ; 
 void* SEND_WSC_NACK ; 
 int /*<<< orphan*/  WPS_CFG_SETUP_LOCKED ; 
 int WPS_CONTINUE ; 
 scalar_t__ WPS_MSG_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 struct wpabuf* FUNC2 (struct wps_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct wpabuf*,struct wps_parse_attr*) ; 
 scalar_t__ FUNC4 (struct wps_data*,int /*<<< orphan*/ ,struct wpabuf const*) ; 
 scalar_t__ FUNC5 (struct wps_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct wps_parse_attr*) ; 
 scalar_t__ FUNC8 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct wps_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct wps_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct wps_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum wps_process_res FUNC13(struct wps_data *wps,
					   const struct wpabuf *msg,
					   struct wps_parse_attr *attr)
{
	FUNC0(MSG_DEBUG, "WPS: Received M2");

	if (wps->state != RECV_M2) {
		FUNC0(MSG_DEBUG, "WPS: Unexpected state (%d) for "
			   "receiving M2", wps->state);
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}

	if (FUNC11(wps, attr->registrar_nonce) ||
	    FUNC8(wps, attr->enrollee_nonce) ||
	    FUNC12(wps, attr->uuid_r) ||
	    FUNC6(wps, attr->dev_password_id)) {
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}

	/*
	 * Stop here on an AP as an Enrollee if AP Setup is locked unless the
	 * special locked mode is used to allow protocol run up to M7 in order
	 * to support external Registrars that only learn the current AP
	 * configuration without changing it.
	 */
	if (wps->wps->ap &&
	    ((wps->wps->ap_setup_locked && wps->wps->ap_setup_locked != 2) ||
	     wps->dev_password == NULL)) {
		FUNC0(MSG_DEBUG, "WPS: AP Setup is locked - refuse "
			   "registration of a new Registrar");
		wps->config_error = WPS_CFG_SETUP_LOCKED;
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}

	if (FUNC10(wps, attr->public_key, attr->public_key_len) ||
	    FUNC4(wps, attr->authenticator, msg) ||
	    FUNC7(&wps->peer_dev, attr)) {
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}

#ifdef CONFIG_WPS_NFC
	if (wps->peer_pubkey_hash_set) {
		struct wpabuf *decrypted;
		struct wps_parse_attr eattr;

		decrypted = wps_decrypt_encr_settings(wps, attr->encr_settings,
						      attr->encr_settings_len);
		if (decrypted == NULL) {
			wpa_printf(MSG_DEBUG, "WPS: Failed to decrypt "
				   "Encrypted Settings attribute");
			wps->state = SEND_WSC_NACK;
			return WPS_CONTINUE;
		}

		wpa_printf(MSG_DEBUG, "WPS: Processing decrypted Encrypted "
			   "Settings attribute");
		if (wps_parse_msg(decrypted, &eattr) < 0 ||
		    wps_process_key_wrap_auth(wps, decrypted,
					      eattr.key_wrap_auth) ||
		    wps_process_creds(wps, eattr.cred, eattr.cred_len,
				      eattr.num_cred, attr->version2 != NULL)) {
			wpabuf_clear_free(decrypted);
			wps->state = SEND_WSC_NACK;
			return WPS_CONTINUE;
		}
		wpabuf_clear_free(decrypted);

		wps->state = WPS_MSG_DONE;
		return WPS_CONTINUE;
	}
#endif /* CONFIG_WPS_NFC */

	wps->state = SEND_M3;
	return WPS_CONTINUE;
}