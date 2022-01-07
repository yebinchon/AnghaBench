
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int drv_flags; int conf; } ;
struct wpa_ssid {int disabled; void* ssid_len; int key_mgmt; int export_keys; int id; void* psk; int psk_set; int ieee80211w; int dpp_netaccesskey_expiry; void* dpp_netaccesskey_len; void* dpp_netaccesskey; void* dpp_csign_len; void* dpp_csign; int dpp_connector; void* ssid; } ;
struct wpa_driver_capa {int key_mgmt; } ;
struct dpp_authentication {scalar_t__ akm; void* ssid_len; int psk; int psk_set; scalar_t__* passphrase; scalar_t__ connector; int net_access_key_expiry; scalar_t__ net_access_key; scalar_t__ c_sign_key; int ssid; } ;


 scalar_t__ DPP_AKM_SAE ;
 int MGMT_FRAME_PROTECTION_OPTIONAL ;
 int MGMT_FRAME_PROTECTION_REQUIRED ;
 int MSG_DEBUG ;
 void* PMK_LEN ;
 int WPA_DRIVER_CAPA_KEY_MGMT_SAE ;
 int WPA_DRIVER_FLAGS_SAE ;
 int WPA_KEY_MGMT_DPP ;
 int WPA_KEY_MGMT_FT_PSK ;
 int WPA_KEY_MGMT_FT_SAE ;
 int WPA_KEY_MGMT_PSK ;
 int WPA_KEY_MGMT_PSK_SHA256 ;
 int WPA_KEY_MGMT_SAE ;
 scalar_t__ dpp_akm_psk (scalar_t__) ;
 scalar_t__ dpp_akm_sae (scalar_t__) ;
 void* os_malloc (void*) ;
 int os_memcpy (void*,int ,void*) ;
 int os_strdup (scalar_t__) ;
 struct wpa_ssid* wpa_config_add_network (int ) ;
 int wpa_config_remove_network (int ,int ) ;
 int wpa_config_set_network_defaults (struct wpa_ssid*) ;
 scalar_t__ wpa_config_set_quoted (struct wpa_ssid*,char*,scalar_t__*) ;
 int wpa_config_update_psk (struct wpa_ssid*) ;
 int wpa_drv_get_capa (struct wpa_supplicant*,struct wpa_driver_capa*) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_head (scalar_t__) ;
 void* wpabuf_len (scalar_t__) ;
 int wpas_notify_network_added (struct wpa_supplicant*,struct wpa_ssid*) ;
 int wpas_notify_network_removed (struct wpa_supplicant*,struct wpa_ssid*) ;

__attribute__((used)) static struct wpa_ssid * wpas_dpp_add_network(struct wpa_supplicant *wpa_s,
           struct dpp_authentication *auth)
{
 struct wpa_ssid *ssid;
 ssid = wpa_config_add_network(wpa_s->conf);
 if (!ssid)
  return ((void*)0);
 wpas_notify_network_added(wpa_s, ssid);
 wpa_config_set_network_defaults(ssid);
 ssid->disabled = 1;

 ssid->ssid = os_malloc(auth->ssid_len);
 if (!ssid->ssid)
  goto fail;
 os_memcpy(ssid->ssid, auth->ssid, auth->ssid_len);
 ssid->ssid_len = auth->ssid_len;

 if (auth->connector) {
  ssid->key_mgmt = WPA_KEY_MGMT_DPP;
  ssid->ieee80211w = MGMT_FRAME_PROTECTION_REQUIRED;
  ssid->dpp_connector = os_strdup(auth->connector);
  if (!ssid->dpp_connector)
   goto fail;
 }

 if (auth->c_sign_key) {
  ssid->dpp_csign = os_malloc(wpabuf_len(auth->c_sign_key));
  if (!ssid->dpp_csign)
   goto fail;
  os_memcpy(ssid->dpp_csign, wpabuf_head(auth->c_sign_key),
     wpabuf_len(auth->c_sign_key));
  ssid->dpp_csign_len = wpabuf_len(auth->c_sign_key);
 }

 if (auth->net_access_key) {
  ssid->dpp_netaccesskey =
   os_malloc(wpabuf_len(auth->net_access_key));
  if (!ssid->dpp_netaccesskey)
   goto fail;
  os_memcpy(ssid->dpp_netaccesskey,
     wpabuf_head(auth->net_access_key),
     wpabuf_len(auth->net_access_key));
  ssid->dpp_netaccesskey_len = wpabuf_len(auth->net_access_key);
  ssid->dpp_netaccesskey_expiry = auth->net_access_key_expiry;
 }

 if (!auth->connector || dpp_akm_psk(auth->akm) ||
     dpp_akm_sae(auth->akm)) {
  if (!auth->connector)
   ssid->key_mgmt = 0;
  if (dpp_akm_psk(auth->akm))
   ssid->key_mgmt |= WPA_KEY_MGMT_PSK |
    WPA_KEY_MGMT_PSK_SHA256 | WPA_KEY_MGMT_FT_PSK;
  if (dpp_akm_sae(auth->akm))
   ssid->key_mgmt |= WPA_KEY_MGMT_SAE |
    WPA_KEY_MGMT_FT_SAE;
  ssid->ieee80211w = MGMT_FRAME_PROTECTION_OPTIONAL;
  if (auth->passphrase[0]) {
   if (wpa_config_set_quoted(ssid, "psk",
        auth->passphrase) < 0)
    goto fail;
   wpa_config_update_psk(ssid);
   ssid->export_keys = 1;
  } else {
   ssid->psk_set = auth->psk_set;
   os_memcpy(ssid->psk, auth->psk, PMK_LEN);
  }
 }

 return ssid;
fail:
 wpas_notify_network_removed(wpa_s, ssid);
 wpa_config_remove_network(wpa_s->conf, ssid->id);
 return ((void*)0);
}
