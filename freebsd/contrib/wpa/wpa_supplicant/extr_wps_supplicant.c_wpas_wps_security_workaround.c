
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wps_credential {int mac_addr; } ;
struct wpa_supplicant {TYPE_1__* conf; int bssid; } ;
struct wpa_ssid {int proto; int pairwise_cipher; int ssid_len; int * ssid; } ;
struct wpa_ie_data {int pairwise_cipher; } ;
struct wpa_driver_capa {int key_mgmt; int enc; } ;
struct wpa_bss {int dummy; } ;
struct TYPE_2__ {int ap_scan; } ;


 int MSG_DEBUG ;
 int WLAN_EID_RSN ;
 int WPA_CIPHER_CCMP ;
 int WPA_CIPHER_TKIP ;
 int WPA_DRIVER_CAPA_ENC_CCMP ;
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK ;
 int WPA_IE_VENDOR_TYPE ;
 int WPA_PROTO_RSN ;
 int WPA_PROTO_WPA ;
 struct wpa_bss* wpa_bss_get (struct wpa_supplicant*,int ,int *,int ) ;
 scalar_t__* wpa_bss_get_ie (struct wpa_bss*,int ) ;
 scalar_t__* wpa_bss_get_vendor_ie (struct wpa_bss*,int ) ;
 scalar_t__ wpa_drv_get_capa (struct wpa_supplicant*,struct wpa_driver_capa*) ;
 scalar_t__ wpa_parse_wpa_ie (scalar_t__ const*,scalar_t__ const,struct wpa_ie_data*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wpas_wps_security_workaround(struct wpa_supplicant *wpa_s,
      struct wpa_ssid *ssid,
      const struct wps_credential *cred)
{
 struct wpa_driver_capa capa;
 struct wpa_bss *bss;
 const u8 *ie;
 struct wpa_ie_data adv;
 int wpa2 = 0, ccmp = 0;
 if (wpa_drv_get_capa(wpa_s, &capa))
  return;

 if (ssid->ssid == ((void*)0))
  return;
 bss = wpa_bss_get(wpa_s, cred->mac_addr, ssid->ssid, ssid->ssid_len);
 if (!bss)
  bss = wpa_bss_get(wpa_s, wpa_s->bssid,
      ssid->ssid, ssid->ssid_len);
 if (bss == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: The AP was not found from BSS "
      "table - use credential as-is");
  return;
 }

 wpa_printf(MSG_DEBUG, "WPS: AP found from BSS table");

 ie = wpa_bss_get_ie(bss, WLAN_EID_RSN);
 if (ie && wpa_parse_wpa_ie(ie, 2 + ie[1], &adv) == 0) {
  wpa2 = 1;
  if (adv.pairwise_cipher & WPA_CIPHER_CCMP)
   ccmp = 1;
 } else {
  ie = wpa_bss_get_vendor_ie(bss, WPA_IE_VENDOR_TYPE);
  if (ie && wpa_parse_wpa_ie(ie, 2 + ie[1], &adv) == 0 &&
      adv.pairwise_cipher & WPA_CIPHER_CCMP)
   ccmp = 1;
 }

 if (ie == ((void*)0) && (ssid->proto & WPA_PROTO_WPA) &&
     (ssid->pairwise_cipher & WPA_CIPHER_TKIP)) {






  wpa_printf(MSG_DEBUG, "WPS: The AP did not yet advertise WPA "
      "support - use credential as-is");
  return;
 }

 if (ccmp && !(ssid->pairwise_cipher & WPA_CIPHER_CCMP) &&
     (ssid->pairwise_cipher & WPA_CIPHER_TKIP) &&
     (capa.key_mgmt & WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK)) {
  wpa_printf(MSG_DEBUG, "WPS: Add CCMP into the credential "
      "based on scan results");
  if (wpa_s->conf->ap_scan == 1)
   ssid->pairwise_cipher |= WPA_CIPHER_CCMP;
  else
   ssid->pairwise_cipher = WPA_CIPHER_CCMP;
 }

 if (wpa2 && !(ssid->proto & WPA_PROTO_RSN) &&
     (ssid->proto & WPA_PROTO_WPA) &&
     (capa.enc & WPA_DRIVER_CAPA_ENC_CCMP)) {
  wpa_printf(MSG_DEBUG, "WPS: Add WPA2 into the credential "
      "based on scan results");
  if (wpa_s->conf->ap_scan == 1)
   ssid->proto |= WPA_PROTO_RSN;
  else
   ssid->proto = WPA_PROTO_RSN;
 }
}
