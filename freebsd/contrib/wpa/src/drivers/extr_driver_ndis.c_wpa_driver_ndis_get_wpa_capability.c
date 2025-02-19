
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key_mgmt; int enc; int auth; } ;
struct wpa_driver_ndis_data {int has_capability; TYPE_1__ capa; } ;


 int MSG_DEBUG ;
 scalar_t__ Ndis802_11AuthModeOpen ;
 scalar_t__ Ndis802_11AuthModeShared ;
 scalar_t__ Ndis802_11AuthModeWPA ;
 scalar_t__ Ndis802_11AuthModeWPAPSK ;
 int Ndis802_11Encryption1Enabled ;
 scalar_t__ Ndis802_11Encryption1KeyAbsent ;
 int Ndis802_11Encryption2Enabled ;
 scalar_t__ Ndis802_11Encryption2KeyAbsent ;
 int Ndis802_11Encryption3Enabled ;
 scalar_t__ Ndis802_11Encryption3KeyAbsent ;
 int Ndis802_11EncryptionDisabled ;
 int WPA_DRIVER_AUTH_OPEN ;
 int WPA_DRIVER_AUTH_SHARED ;
 int WPA_DRIVER_CAPA_ENC_CCMP ;
 int WPA_DRIVER_CAPA_ENC_TKIP ;
 int WPA_DRIVER_CAPA_ENC_WEP104 ;
 int WPA_DRIVER_CAPA_ENC_WEP40 ;
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA ;
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK ;
 scalar_t__ ndis_get_auth_mode (struct wpa_driver_ndis_data*) ;
 scalar_t__ ndis_get_encr_status (struct wpa_driver_ndis_data*) ;
 scalar_t__ ndis_set_auth_mode (struct wpa_driver_ndis_data*,scalar_t__) ;
 scalar_t__ ndis_set_encr_status (struct wpa_driver_ndis_data*,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void
wpa_driver_ndis_get_wpa_capability(struct wpa_driver_ndis_data *drv)
{
 wpa_printf(MSG_DEBUG, "NDIS: verifying driver WPA capability");

 if (ndis_set_auth_mode(drv, Ndis802_11AuthModeWPA) == 0 &&
     ndis_get_auth_mode(drv) == Ndis802_11AuthModeWPA) {
  wpa_printf(MSG_DEBUG, "NDIS: WPA key management supported");
  drv->capa.key_mgmt |= WPA_DRIVER_CAPA_KEY_MGMT_WPA;
 }

 if (ndis_set_auth_mode(drv, Ndis802_11AuthModeWPAPSK) == 0 &&
     ndis_get_auth_mode(drv) == Ndis802_11AuthModeWPAPSK) {
  wpa_printf(MSG_DEBUG, "NDIS: WPA-PSK key management "
      "supported");
  drv->capa.key_mgmt |= WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK;
 }

 if (ndis_set_encr_status(drv, Ndis802_11Encryption3Enabled) == 0 &&
     ndis_get_encr_status(drv) == Ndis802_11Encryption3KeyAbsent) {
  wpa_printf(MSG_DEBUG, "NDIS: CCMP encryption supported");
  drv->capa.enc |= WPA_DRIVER_CAPA_ENC_CCMP;
 }

 if (ndis_set_encr_status(drv, Ndis802_11Encryption2Enabled) == 0 &&
     ndis_get_encr_status(drv) == Ndis802_11Encryption2KeyAbsent) {
  wpa_printf(MSG_DEBUG, "NDIS: TKIP encryption supported");
  drv->capa.enc |= WPA_DRIVER_CAPA_ENC_TKIP;
 }

 if (ndis_set_encr_status(drv, Ndis802_11Encryption1Enabled) == 0 &&
     ndis_get_encr_status(drv) == Ndis802_11Encryption1KeyAbsent) {
  wpa_printf(MSG_DEBUG, "NDIS: WEP encryption supported");
  drv->capa.enc |= WPA_DRIVER_CAPA_ENC_WEP40 |
   WPA_DRIVER_CAPA_ENC_WEP104;
 }

 if (ndis_set_auth_mode(drv, Ndis802_11AuthModeShared) == 0 &&
     ndis_get_auth_mode(drv) == Ndis802_11AuthModeShared) {
  drv->capa.auth |= WPA_DRIVER_AUTH_SHARED;
 }

 if (ndis_set_auth_mode(drv, Ndis802_11AuthModeOpen) == 0 &&
     ndis_get_auth_mode(drv) == Ndis802_11AuthModeOpen) {
  drv->capa.auth |= WPA_DRIVER_AUTH_OPEN;
 }

 ndis_set_encr_status(drv, Ndis802_11EncryptionDisabled);




 if (drv->capa.key_mgmt & WPA_DRIVER_CAPA_KEY_MGMT_WPA &&
     drv->capa.enc & (WPA_DRIVER_CAPA_ENC_TKIP |
        WPA_DRIVER_CAPA_ENC_CCMP)) {
  wpa_printf(MSG_DEBUG, "NDIS: driver supports WPA");
  drv->has_capability = 1;
 } else {
  wpa_printf(MSG_DEBUG, "NDIS: no WPA support found");
 }

 wpa_printf(MSG_DEBUG, "NDIS: driver capabilities: key_mgmt 0x%x "
     "enc 0x%x auth 0x%x",
     drv->capa.key_mgmt, drv->capa.enc, drv->capa.auth);
}
