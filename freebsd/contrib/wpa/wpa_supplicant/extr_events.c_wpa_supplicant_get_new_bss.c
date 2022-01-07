
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {scalar_t__ ssid_len; int ssid; } ;
struct wpa_bss {int dummy; } ;


 struct wpa_bss* wpa_bss_get (struct wpa_supplicant*,int const*,int ,scalar_t__) ;
 struct wpa_bss* wpa_bss_get_bssid (struct wpa_supplicant*,int const*) ;

__attribute__((used)) static struct wpa_bss * wpa_supplicant_get_new_bss(
 struct wpa_supplicant *wpa_s, const u8 *bssid)
{
 struct wpa_bss *bss = ((void*)0);
 struct wpa_ssid *ssid = wpa_s->current_ssid;

 if (ssid->ssid_len > 0)
  bss = wpa_bss_get(wpa_s, bssid, ssid->ssid, ssid->ssid_len);
 if (!bss)
  bss = wpa_bss_get_bssid(wpa_s, bssid);

 return bss;
}
