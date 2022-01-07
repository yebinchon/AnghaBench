
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int * eapol; TYPE_1__* conf; int wps; } ;
struct eapol_ctx {struct wpa_supplicant* cb_ctx; int set_anon_id; int eap_error_cb; int status_cb; int cert_in_cb; int cert_cb; int cb; int port_cb; int eap_proxy_notify_sim_status; int eap_proxy_cb; int eap_param_needed; int wps; int openssl_ciphers; int pkcs11_module_path; int pkcs11_engine_path; int opensc_engine_path; int aborted_cached; int get_config_blob; int set_config_blob; int set_wep_key; int eapol_send; int eapol_done_cb; scalar_t__ preauth; struct wpa_supplicant* eapol_send_ctx; struct wpa_supplicant* msg_ctx; struct wpa_supplicant* ctx; } ;
struct TYPE_2__ {int cert_in_cb; int openssl_ciphers; int pkcs11_module_path; int pkcs11_engine_path; int opensc_engine_path; } ;


 int MSG_ERROR ;
 int * eapol_sm_init (struct eapol_ctx*) ;
 int os_free (struct eapol_ctx*) ;
 struct eapol_ctx* os_zalloc (int) ;
 int wpa_eapol_set_wep_key ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_aborted_cached ;
 int wpa_supplicant_cert_cb ;
 int wpa_supplicant_eap_error_cb ;
 int wpa_supplicant_eap_param_needed ;
 int wpa_supplicant_eap_proxy_cb ;
 int wpa_supplicant_eap_proxy_notify_sim_status ;
 int wpa_supplicant_eapol_cb ;
 int wpa_supplicant_eapol_send ;
 int wpa_supplicant_get_config_blob ;
 int wpa_supplicant_notify_eapol_done ;
 int wpa_supplicant_port_cb ;
 int wpa_supplicant_set_anon_id ;
 int wpa_supplicant_set_config_blob ;
 int wpa_supplicant_status_cb ;

int wpa_supplicant_init_eapol(struct wpa_supplicant *wpa_s)
{
 return 0;
}
