
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int * eapol; int scard; TYPE_1__* conf; struct wpa_ssid* current_ssid; int wpa; int key_mgmt; } ;
struct wpa_ssid {int eap; int eap_workaround; } ;
struct wpa_sm_ctx {int cert_in_cb; int get_state; struct wpa_supplicant* msg_ctx; struct eapol_test_data* ctx; int set_anon_id; int cert_cb; int eap_param_needed; int openssl_ciphers; int pkcs11_module_path; int pkcs11_engine_path; int opensc_engine_path; int get_config_blob; int set_config_blob; int eapol_send; int eapol_done_cb; scalar_t__ preauth; struct wpa_supplicant* eapol_send_ctx; struct eapol_test_data* cb_ctx; int cb; int scard_ctx; } ;
struct eapol_test_data {int dummy; } ;
struct eapol_ctx {int cert_in_cb; int get_state; struct wpa_supplicant* msg_ctx; struct eapol_test_data* ctx; int set_anon_id; int cert_cb; int eap_param_needed; int openssl_ciphers; int pkcs11_module_path; int pkcs11_engine_path; int opensc_engine_path; int get_config_blob; int set_config_blob; int eapol_send; int eapol_done_cb; scalar_t__ preauth; struct wpa_supplicant* eapol_send_ctx; struct eapol_test_data* cb_ctx; int cb; int scard_ctx; } ;
struct eapol_config {int accept_802_1x_keys; int external_sim; int workaround; int fast_reauth; scalar_t__ required_keys; } ;
typedef int eapol_conf ;
struct TYPE_2__ {int external_sim; int fast_reauth; int openssl_ciphers; int pkcs11_module_path; int pkcs11_engine_path; int opensc_engine_path; } ;


 int FALSE ;
 int TRUE ;
 int WPA_KEY_MGMT_IEEE8021X_NO_WPA ;
 int eapol_sm_cb ;
 int * eapol_sm_init (struct wpa_sm_ctx*) ;
 int eapol_sm_notify_config (int *,int *,struct eapol_config*) ;
 int eapol_sm_notify_portEnabled (int *,int ) ;
 int eapol_sm_notify_portValid (int *,int ) ;
 int eapol_sm_register_scard_ctx (int *,int ) ;
 int eapol_test_cert_cb ;
 int eapol_test_eap_param_needed ;
 int eapol_test_eapol_done_cb ;
 int eapol_test_eapol_send ;
 int eapol_test_get_config_blob ;
 int eapol_test_get_state ;
 int eapol_test_set_anon_id ;
 int eapol_test_set_config_blob ;
 int os_free (struct wpa_sm_ctx*) ;
 int os_memset (struct eapol_config*,int ,int) ;
 struct wpa_sm_ctx* os_zalloc (int) ;
 int printf (char*) ;
 int wpa_sm_init (struct wpa_sm_ctx*) ;

__attribute__((used)) static int test_eapol(struct eapol_test_data *e, struct wpa_supplicant *wpa_s,
        struct wpa_ssid *ssid)
{
 struct eapol_config eapol_conf;
 struct eapol_ctx *ctx;
 struct wpa_sm_ctx *wctx;

 ctx = os_zalloc(sizeof(*ctx));
 if (ctx == ((void*)0)) {
  printf("Failed to allocate EAPOL context.\n");
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

 wpa_s->eapol = eapol_sm_init(ctx);
 if (wpa_s->eapol == ((void*)0)) {
  os_free(ctx);
  printf("Failed to initialize EAPOL state machines.\n");
  return -1;
 }

 wpa_s->key_mgmt = WPA_KEY_MGMT_IEEE8021X_NO_WPA;
 wctx = os_zalloc(sizeof(*wctx));
 if (wctx == ((void*)0)) {
  os_free(ctx);
  return -1;
 }
 wctx->ctx = e;
 wctx->msg_ctx = wpa_s;
 wctx->get_state = eapol_test_get_state;
 wpa_s->wpa = wpa_sm_init(wctx);
 if (!wpa_s->wpa) {
  os_free(ctx);
  os_free(wctx);
  return -1;
 }

 if (!ssid)
  return 0;

 wpa_s->current_ssid = ssid;
 os_memset(&eapol_conf, 0, sizeof(eapol_conf));
 eapol_conf.accept_802_1x_keys = 1;
 eapol_conf.required_keys = 0;
 eapol_conf.fast_reauth = wpa_s->conf->fast_reauth;
 eapol_conf.workaround = ssid->eap_workaround;
 eapol_conf.external_sim = wpa_s->conf->external_sim;
 eapol_sm_notify_config(wpa_s->eapol, &ssid->eap, &eapol_conf);
 eapol_sm_register_scard_ctx(wpa_s->eapol, wpa_s->scard);


 eapol_sm_notify_portValid(wpa_s->eapol, FALSE);

 eapol_sm_notify_portEnabled(wpa_s->eapol, TRUE);

 return 0;
}
