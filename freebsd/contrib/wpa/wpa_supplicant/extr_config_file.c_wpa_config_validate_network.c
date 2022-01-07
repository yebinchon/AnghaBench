
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int disabled; int p2p_persistent_group; int group_cipher; int pairwise_cipher; scalar_t__ mode; scalar_t__ key_mgmt; scalar_t__ ieee80211w; scalar_t__ ocv; scalar_t__ psk_set; scalar_t__ passphrase; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 scalar_t__ NO_MGMT_FRAME_PROTECTION ;
 scalar_t__ WPAS_MODE_MESH ;
 int WPA_CIPHER_CCMP ;
 int WPA_CIPHER_CCMP_256 ;
 int WPA_CIPHER_GCMP ;
 int WPA_CIPHER_GCMP_256 ;
 int WPA_CIPHER_NONE ;
 scalar_t__ WPA_KEY_MGMT_NONE ;
 scalar_t__ WPA_KEY_MGMT_SAE ;
 int wpa_config_update_psk (struct wpa_ssid*) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static int wpa_config_validate_network(struct wpa_ssid *ssid, int line)
{
 int errors = 0;

 if (ssid->passphrase) {
  if (ssid->psk_set) {
   wpa_printf(MSG_ERROR, "Line %d: both PSK and "
       "passphrase configured.", line);
   errors++;
  }
  wpa_config_update_psk(ssid);
 }

 if (ssid->disabled == 2)
  ssid->p2p_persistent_group = 1;

 if ((ssid->group_cipher & WPA_CIPHER_CCMP) &&
     !(ssid->pairwise_cipher & (WPA_CIPHER_CCMP | WPA_CIPHER_CCMP_256 |
           WPA_CIPHER_GCMP | WPA_CIPHER_GCMP_256 |
           WPA_CIPHER_NONE))) {

  wpa_printf(MSG_DEBUG, "Line %d: removed CCMP from group cipher"
      " list since it was not allowed for pairwise "
      "cipher", line);
  ssid->group_cipher &= ~WPA_CIPHER_CCMP;
 }

 if (ssid->mode == WPAS_MODE_MESH &&
     (ssid->key_mgmt != WPA_KEY_MGMT_NONE &&
     ssid->key_mgmt != WPA_KEY_MGMT_SAE)) {
  wpa_printf(MSG_ERROR,
      "Line %d: key_mgmt for mesh network should be open or SAE",
      line);
  errors++;
 }
 return errors;
}
