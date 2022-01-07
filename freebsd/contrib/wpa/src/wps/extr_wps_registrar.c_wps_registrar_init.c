
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_registrar_config {int multi_ap_backhaul_network_key_len; scalar_t__ multi_ap_backhaul_network_key; int multi_ap_backhaul_ssid_len; int multi_ap_backhaul_ssid; int force_per_enrollee_psk; int dualband; int static_wep_only; int disable_auto_conf; int extra_cred_len; scalar_t__ extra_cred; int skip_cred_build; int cb_ctx; int enrollee_seen_cb; int set_sel_reg_cb; int reg_success_cb; int pin_needed_cb; int set_ie_cb; int new_psk_cb; } ;
struct wps_registrar {int sel_reg_dev_password_id_override; int sel_reg_config_methods_override; int multi_ap_backhaul_network_key_len; scalar_t__ multi_ap_backhaul_network_key; int multi_ap_backhaul_ssid_len; int multi_ap_backhaul_ssid; int force_per_enrollee_psk; int dualband; int static_wep_only; int disable_auto_conf; int * extra_cred; int skip_cred_build; int cb_ctx; int enrollee_seen_cb; int set_sel_reg_cb; int reg_success_cb; int pin_needed_cb; int set_ie_cb; int new_psk_cb; struct wps_context* wps; int nfc_pw_tokens; int pins; } ;
struct wps_context {int dummy; } ;


 int dl_list_init (int *) ;
 int os_free (struct wps_registrar*) ;
 int os_memcpy (int ,int ,int ) ;
 scalar_t__ os_memdup (scalar_t__,int ) ;
 struct wps_registrar* os_zalloc (int) ;
 int * wpabuf_alloc_copy (scalar_t__,int ) ;
 int wps_registrar_deinit (struct wps_registrar*) ;
 scalar_t__ wps_set_ie (struct wps_registrar*) ;

struct wps_registrar *
wps_registrar_init(struct wps_context *wps,
     const struct wps_registrar_config *cfg)
{
 struct wps_registrar *reg = os_zalloc(sizeof(*reg));
 if (reg == ((void*)0))
  return ((void*)0);

 dl_list_init(&reg->pins);
 dl_list_init(&reg->nfc_pw_tokens);
 reg->wps = wps;
 reg->new_psk_cb = cfg->new_psk_cb;
 reg->set_ie_cb = cfg->set_ie_cb;
 reg->pin_needed_cb = cfg->pin_needed_cb;
 reg->reg_success_cb = cfg->reg_success_cb;
 reg->set_sel_reg_cb = cfg->set_sel_reg_cb;
 reg->enrollee_seen_cb = cfg->enrollee_seen_cb;
 reg->cb_ctx = cfg->cb_ctx;
 reg->skip_cred_build = cfg->skip_cred_build;
 if (cfg->extra_cred) {
  reg->extra_cred = wpabuf_alloc_copy(cfg->extra_cred,
          cfg->extra_cred_len);
  if (reg->extra_cred == ((void*)0)) {
   os_free(reg);
   return ((void*)0);
  }
 }
 reg->disable_auto_conf = cfg->disable_auto_conf;
 reg->sel_reg_dev_password_id_override = -1;
 reg->sel_reg_config_methods_override = -1;
 reg->static_wep_only = cfg->static_wep_only;
 reg->dualband = cfg->dualband;
 reg->force_per_enrollee_psk = cfg->force_per_enrollee_psk;

 if (cfg->multi_ap_backhaul_ssid) {
  os_memcpy(reg->multi_ap_backhaul_ssid,
     cfg->multi_ap_backhaul_ssid,
     cfg->multi_ap_backhaul_ssid_len);
  reg->multi_ap_backhaul_ssid_len =
   cfg->multi_ap_backhaul_ssid_len;
 }
 if (cfg->multi_ap_backhaul_network_key) {
  reg->multi_ap_backhaul_network_key =
   os_memdup(cfg->multi_ap_backhaul_network_key,
      cfg->multi_ap_backhaul_network_key_len);
  if (reg->multi_ap_backhaul_network_key)
   reg->multi_ap_backhaul_network_key_len =
    cfg->multi_ap_backhaul_network_key_len;
 }

 if (wps_set_ie(reg)) {
  wps_registrar_deinit(reg);
  return ((void*)0);
 }

 return reg;
}
