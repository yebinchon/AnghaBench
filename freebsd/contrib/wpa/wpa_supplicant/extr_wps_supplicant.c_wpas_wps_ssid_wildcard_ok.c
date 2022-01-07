
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_supplicant {scalar_t__ scan_runs; int own_addr; } ;
struct wpa_ssid {int bssid; scalar_t__ bssid_set; int eap; } ;
struct wpa_bss {scalar_t__ beacon_ie_len; int bssid; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int WPS_IE_VENDOR_TYPE ;
 scalar_t__ WPS_PIN_SCAN_IGNORE_SEL_REG ;
 scalar_t__ eap_is_wps_pbc_enrollee (int *) ;
 scalar_t__ eap_is_wps_pin_enrollee (int *) ;
 scalar_t__ os_memcmp (int ,int ,int ) ;
 struct wpabuf* wpa_bss_get_vendor_ie_multi (struct wpa_bss*,int ) ;
 struct wpabuf* wpa_bss_get_vendor_ie_multi_beacon (struct wpa_bss*,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wps_is_addr_authorized (struct wpabuf*,int ,int) ;
 scalar_t__ wps_is_selected_pbc_registrar (struct wpabuf*) ;
 scalar_t__ wps_validate_beacon (struct wpabuf*) ;
 scalar_t__ wps_validate_beacon_probe_resp (struct wpabuf*,int,int ) ;

int wpas_wps_ssid_wildcard_ok(struct wpa_supplicant *wpa_s,
         struct wpa_ssid *ssid,
         struct wpa_bss *bss)
{
 struct wpabuf *wps_ie = ((void*)0);
 int ret = 0;

 if (eap_is_wps_pbc_enrollee(&ssid->eap)) {
  wps_ie = wpa_bss_get_vendor_ie_multi(bss, WPS_IE_VENDOR_TYPE);
  if (wps_ie && wps_is_selected_pbc_registrar(wps_ie)) {

   ret = 1;
  }
 } else if (eap_is_wps_pin_enrollee(&ssid->eap)) {
  wps_ie = wpa_bss_get_vendor_ie_multi(bss, WPS_IE_VENDOR_TYPE);
  if (wps_ie &&
      (wps_is_addr_authorized(wps_ie, wpa_s->own_addr, 1) ||
       wpa_s->scan_runs >= WPS_PIN_SCAN_IGNORE_SEL_REG)) {

   ret = 1;
  }
 }

 if (!ret && ssid->bssid_set &&
     os_memcmp(ssid->bssid, bss->bssid, ETH_ALEN) == 0) {

  ret = 1;
 }
 wpabuf_free(wps_ie);

 return ret;
}
