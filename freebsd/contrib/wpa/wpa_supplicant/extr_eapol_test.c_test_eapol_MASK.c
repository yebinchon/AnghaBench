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
struct wpa_supplicant {int /*<<< orphan*/ * eapol; int /*<<< orphan*/  scard; TYPE_1__* conf; struct wpa_ssid* current_ssid; int /*<<< orphan*/  wpa; int /*<<< orphan*/  key_mgmt; } ;
struct wpa_ssid {int /*<<< orphan*/  eap; int /*<<< orphan*/  eap_workaround; } ;
struct wpa_sm_ctx {int cert_in_cb; int /*<<< orphan*/  get_state; struct wpa_supplicant* msg_ctx; struct eapol_test_data* ctx; int /*<<< orphan*/  set_anon_id; int /*<<< orphan*/  cert_cb; int /*<<< orphan*/  eap_param_needed; int /*<<< orphan*/  openssl_ciphers; int /*<<< orphan*/  pkcs11_module_path; int /*<<< orphan*/  pkcs11_engine_path; int /*<<< orphan*/  opensc_engine_path; int /*<<< orphan*/  get_config_blob; int /*<<< orphan*/  set_config_blob; int /*<<< orphan*/  eapol_send; int /*<<< orphan*/  eapol_done_cb; scalar_t__ preauth; struct wpa_supplicant* eapol_send_ctx; struct eapol_test_data* cb_ctx; int /*<<< orphan*/  cb; int /*<<< orphan*/  scard_ctx; } ;
struct eapol_test_data {int dummy; } ;
struct eapol_ctx {int cert_in_cb; int /*<<< orphan*/  get_state; struct wpa_supplicant* msg_ctx; struct eapol_test_data* ctx; int /*<<< orphan*/  set_anon_id; int /*<<< orphan*/  cert_cb; int /*<<< orphan*/  eap_param_needed; int /*<<< orphan*/  openssl_ciphers; int /*<<< orphan*/  pkcs11_module_path; int /*<<< orphan*/  pkcs11_engine_path; int /*<<< orphan*/  opensc_engine_path; int /*<<< orphan*/  get_config_blob; int /*<<< orphan*/  set_config_blob; int /*<<< orphan*/  eapol_send; int /*<<< orphan*/  eapol_done_cb; scalar_t__ preauth; struct wpa_supplicant* eapol_send_ctx; struct eapol_test_data* cb_ctx; int /*<<< orphan*/  cb; int /*<<< orphan*/  scard_ctx; } ;
struct eapol_config {int accept_802_1x_keys; int /*<<< orphan*/  external_sim; int /*<<< orphan*/  workaround; int /*<<< orphan*/  fast_reauth; scalar_t__ required_keys; } ;
typedef  int /*<<< orphan*/  eapol_conf ;
struct TYPE_2__ {int /*<<< orphan*/  external_sim; int /*<<< orphan*/  fast_reauth; int /*<<< orphan*/  openssl_ciphers; int /*<<< orphan*/  pkcs11_module_path; int /*<<< orphan*/  pkcs11_engine_path; int /*<<< orphan*/  opensc_engine_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WPA_KEY_MGMT_IEEE8021X_NO_WPA ; 
 int /*<<< orphan*/  eapol_sm_cb ; 
 int /*<<< orphan*/ * FUNC0 (struct wpa_sm_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct eapol_config*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eapol_test_cert_cb ; 
 int /*<<< orphan*/  eapol_test_eap_param_needed ; 
 int /*<<< orphan*/  eapol_test_eapol_done_cb ; 
 int /*<<< orphan*/  eapol_test_eapol_send ; 
 int /*<<< orphan*/  eapol_test_get_config_blob ; 
 int /*<<< orphan*/  eapol_test_get_state ; 
 int /*<<< orphan*/  eapol_test_set_anon_id ; 
 int /*<<< orphan*/  eapol_test_set_config_blob ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_sm_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct eapol_config*,int /*<<< orphan*/ ,int) ; 
 struct wpa_sm_ctx* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_sm_ctx*) ; 

__attribute__((used)) static int FUNC10(struct eapol_test_data *e, struct wpa_supplicant *wpa_s,
		      struct wpa_ssid *ssid)
{
	struct eapol_config eapol_conf;
	struct eapol_ctx *ctx;
	struct wpa_sm_ctx *wctx;

	ctx = FUNC7(sizeof(*ctx));
	if (ctx == NULL) {
		FUNC8("Failed to allocate EAPOL context.\n");
		return -1;
	}
	ctx->ctx = e;
	ctx->msg_ctx = wpa_s;
	ctx->scard_ctx = wpa_s->scard;
	ctx->cb = eapol_sm_cb;
	ctx->cb_ctx = e;
	ctx->eapol_send_ctx = wpa_s;
	ctx->preauth = 0;
	ctx->eapol_done_cb = eapol_test_eapol_done_cb;
	ctx->eapol_send = eapol_test_eapol_send;
	ctx->set_config_blob = eapol_test_set_config_blob;
	ctx->get_config_blob = eapol_test_get_config_blob;
	ctx->opensc_engine_path = wpa_s->conf->opensc_engine_path;
	ctx->pkcs11_engine_path = wpa_s->conf->pkcs11_engine_path;
	ctx->pkcs11_module_path = wpa_s->conf->pkcs11_module_path;
	ctx->openssl_ciphers = wpa_s->conf->openssl_ciphers;
	ctx->eap_param_needed = eapol_test_eap_param_needed;
	ctx->cert_cb = eapol_test_cert_cb;
	ctx->cert_in_cb = 1;
	ctx->set_anon_id = eapol_test_set_anon_id;

	wpa_s->eapol = FUNC0(ctx);
	if (wpa_s->eapol == NULL) {
		FUNC5(ctx);
		FUNC8("Failed to initialize EAPOL state machines.\n");
		return -1;
	}

	wpa_s->key_mgmt = WPA_KEY_MGMT_IEEE8021X_NO_WPA;
	wctx = FUNC7(sizeof(*wctx));
	if (wctx == NULL) {
		FUNC5(ctx);
		return -1;
	}
	wctx->ctx = e;
	wctx->msg_ctx = wpa_s;
	wctx->get_state = eapol_test_get_state;
	wpa_s->wpa = FUNC9(wctx);
	if (!wpa_s->wpa) {
		FUNC5(ctx);
		FUNC5(wctx);
		return -1;
	}

	if (!ssid)
		return 0;

	wpa_s->current_ssid = ssid;
	FUNC6(&eapol_conf, 0, sizeof(eapol_conf));
	eapol_conf.accept_802_1x_keys = 1;
	eapol_conf.required_keys = 0;
	eapol_conf.fast_reauth = wpa_s->conf->fast_reauth;
	eapol_conf.workaround = ssid->eap_workaround;
	eapol_conf.external_sim = wpa_s->conf->external_sim;
	FUNC1(wpa_s->eapol, &ssid->eap, &eapol_conf);
	FUNC4(wpa_s->eapol, wpa_s->scard);


	FUNC3(wpa_s->eapol, FALSE);
	/* 802.1X::portControl = Auto */
	FUNC2(wpa_s->eapol, TRUE);

	return 0;
}