
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_enc; TYPE_1__* conf; } ;
struct wpa_ssid {int key_mgmt; scalar_t__ ieee80211w; int dot11MeshHoldingTimeout; int dot11MeshConfirmTimeout; int dot11MeshRetryTimeout; int dot11MeshMaxRetries; int group_cipher; int pairwise_cipher; int ocv; int ssid_len; int ssid; } ;
struct mesh_conf {int security; scalar_t__ ieee80211w; int pairwise_cipher; int group_cipher; int mesh_auth_id; int dot11MeshHoldingTimeout; int dot11MeshConfirmTimeout; int dot11MeshRetryTimeout; int dot11MeshMaxRetries; int mesh_sp_id; scalar_t__ mesh_cc_id; int mesh_pm_id; int mesh_pp_id; int mgmt_group_cipher; int ocv; int meshid_len; int meshid; } ;
struct TYPE_2__ {scalar_t__ pmf; } ;


 int MESH_CONF_SEC_AMPE ;
 int MESH_CONF_SEC_AUTH ;
 int MESH_CONF_SEC_NONE ;
 int MESH_PATH_METRIC_AIRTIME ;
 int MESH_PATH_PROTOCOL_HWMP ;
 int MESH_SYNC_METHOD_NEIGHBOR_OFFSET ;
 scalar_t__ MGMT_FRAME_PROTECTION_DEFAULT ;
 int MSG_INFO ;
 scalar_t__ NO_MGMT_FRAME_PROTECTION ;
 int WPA_CIPHER_AES_128_CMAC ;
 int WPA_CIPHER_GTK_NOT_USED ;
 int WPA_CIPHER_TKIP ;
 int WPA_DRIVER_CAPA_ENC_BIP ;
 int WPA_KEY_MGMT_SAE ;
 int os_free (struct mesh_conf*) ;
 int os_memcpy (int ,int ,int ) ;
 struct mesh_conf* os_zalloc (int) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;
 int wpa_pick_group_cipher (int ) ;
 int wpa_pick_pairwise_cipher (int ,int ) ;

__attribute__((used)) static struct mesh_conf * mesh_config_create(struct wpa_supplicant *wpa_s,
          struct wpa_ssid *ssid)
{
 struct mesh_conf *conf;
 int cipher;

 conf = os_zalloc(sizeof(struct mesh_conf));
 if (!conf)
  return ((void*)0);

 os_memcpy(conf->meshid, ssid->ssid, ssid->ssid_len);
 conf->meshid_len = ssid->ssid_len;

 if (ssid->key_mgmt & WPA_KEY_MGMT_SAE)
  conf->security |= MESH_CONF_SEC_AUTH |
   MESH_CONF_SEC_AMPE;
 else
  conf->security |= MESH_CONF_SEC_NONE;
 cipher = wpa_pick_pairwise_cipher(ssid->pairwise_cipher, 0);
 if (cipher < 0 || cipher == WPA_CIPHER_TKIP) {
  wpa_msg(wpa_s, MSG_INFO, "mesh: Invalid pairwise cipher");
  os_free(conf);
  return ((void*)0);
 }
 conf->pairwise_cipher = cipher;

 cipher = wpa_pick_group_cipher(ssid->group_cipher);
 if (cipher < 0 || cipher == WPA_CIPHER_TKIP ||
     cipher == WPA_CIPHER_GTK_NOT_USED) {
  wpa_msg(wpa_s, MSG_INFO, "mesh: Invalid group cipher");
  os_free(conf);
  return ((void*)0);
 }

 conf->group_cipher = cipher;
 if (conf->ieee80211w != NO_MGMT_FRAME_PROTECTION)
  conf->mgmt_group_cipher = WPA_CIPHER_AES_128_CMAC;


 conf->mesh_pp_id = MESH_PATH_PROTOCOL_HWMP;
 conf->mesh_pm_id = MESH_PATH_METRIC_AIRTIME;
 conf->mesh_cc_id = 0;
 conf->mesh_sp_id = MESH_SYNC_METHOD_NEIGHBOR_OFFSET;
 conf->mesh_auth_id = (conf->security & MESH_CONF_SEC_AUTH) ? 1 : 0;
 conf->dot11MeshMaxRetries = ssid->dot11MeshMaxRetries;
 conf->dot11MeshRetryTimeout = ssid->dot11MeshRetryTimeout;
 conf->dot11MeshConfirmTimeout = ssid->dot11MeshConfirmTimeout;
 conf->dot11MeshHoldingTimeout = ssid->dot11MeshHoldingTimeout;

 return conf;
}
