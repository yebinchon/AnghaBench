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
struct wps_data {int int_reg; int /*<<< orphan*/  state; TYPE_2__* nfc_pw_token; TYPE_1__* wps; int /*<<< orphan*/  dev_pw_id; int /*<<< orphan*/  uuid_r; int /*<<< orphan*/  nonce_r; } ;
struct wpabuf {int dummy; } ;
struct TYPE_4__ {scalar_t__ pw_id; scalar_t__ pk_hash_provided_oob; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* rf_band_cb ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  registrar; } ;

/* Variables and functions */
 scalar_t__ DEV_PW_NFC_CONNECTION_HANDOVER ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  RECV_DONE ; 
 int /*<<< orphan*/  RECV_M3 ; 
 int /*<<< orphan*/  WPS_CFG_NO_ERROR ; 
 int /*<<< orphan*/  WPS_M2 ; 
 int /*<<< orphan*/  WPS_NONCE_LEN ; 
 int /*<<< orphan*/  WPS_UUID_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 scalar_t__ FUNC7 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC8 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC9 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC10 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct wpabuf*) ; 
 scalar_t__ FUNC12 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC13 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC14 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 scalar_t__ FUNC16 (struct wps_data*,struct wpabuf*,struct wpabuf*) ; 
 scalar_t__ FUNC17 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC18 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC19 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC20 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 scalar_t__ FUNC22 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC23 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC26 (struct wpabuf*) ; 
 scalar_t__ FUNC27 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (struct wps_data*) ; 

__attribute__((used)) static struct wpabuf * FUNC29(struct wps_data *wps)
{
	struct wpabuf *msg;
	int config_in_m2 = 0;

	if (FUNC0(wps->nonce_r, WPS_NONCE_LEN) < 0)
		return NULL;
	FUNC2(MSG_DEBUG, "WPS: Registrar Nonce",
		    wps->nonce_r, WPS_NONCE_LEN);
	FUNC2(MSG_DEBUG, "WPS: UUID-R", wps->uuid_r, WPS_UUID_LEN);

	FUNC3(MSG_DEBUG, "WPS: Building Message M2");
	msg = FUNC4(1000);
	if (msg == NULL)
		return NULL;

	if (FUNC26(msg) ||
	    FUNC20(msg, WPS_M2) ||
	    FUNC18(wps, msg) ||
	    FUNC23(wps, msg) ||
	    FUNC25(wps, msg) ||
	    FUNC22(wps, msg) ||
	    FUNC28(wps) ||
	    FUNC8(wps, msg) ||
	    FUNC17(wps, msg) ||
	    FUNC12(wps, msg) ||
	    FUNC11(wps->wps->registrar, msg) ||
	    FUNC15(&wps->wps->dev, msg) ||
	    FUNC24(&wps->wps->dev, msg,
			       wps->wps->rf_band_cb(wps->wps->cb_ctx)) ||
	    FUNC7(wps, msg) ||
	    FUNC10(msg, WPS_CFG_NO_ERROR) ||
	    FUNC14(msg, wps->dev_pw_id) ||
	    FUNC21(&wps->wps->dev, msg) ||
	    FUNC27(msg, 0, NULL, 0, 0)) {
		FUNC6(msg);
		return NULL;
	}

#ifdef CONFIG_WPS_NFC
	if (wps->nfc_pw_token && wps->nfc_pw_token->pk_hash_provided_oob &&
	    wps->nfc_pw_token->pw_id == DEV_PW_NFC_CONNECTION_HANDOVER) {
		/*
		 * Use abbreviated handshake since public key hash allowed
		 * Enrollee to validate our public key similarly to how Enrollee
		 * public key was validated. There is no need to validate Device
		 * Password in this case.
		 */
		struct wpabuf *plain = wpabuf_alloc(500);
		if (plain == NULL ||
		    wps_build_cred(wps, plain) ||
		    wps_build_key_wrap_auth(wps, plain) ||
		    wps_build_encr_settings(wps, msg, plain)) {
			wpabuf_free(msg);
			wpabuf_clear_free(plain);
			return NULL;
		}
		wpabuf_clear_free(plain);
		config_in_m2 = 1;
	}
#endif /* CONFIG_WPS_NFC */

	if (FUNC9(wps, msg)) {
		FUNC6(msg);
		return NULL;
	}

	wps->int_reg = 1;
	wps->state = config_in_m2 ? RECV_DONE : RECV_M3;
	return msg;
}