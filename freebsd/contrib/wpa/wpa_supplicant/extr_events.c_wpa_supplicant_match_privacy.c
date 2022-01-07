
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int key_mgmt; int eapol_flags; int owe_only; scalar_t__ mixed_cell; } ;
struct wpa_bss {int caps; } ;


 int EAPOL_FLAG_REQUIRE_KEY_BROADCAST ;
 int EAPOL_FLAG_REQUIRE_KEY_UNICAST ;
 int IEEE80211_CAP_PRIVACY ;
 int WPA_KEY_MGMT_IEEE8021X_NO_WPA ;
 int WPA_KEY_MGMT_OSEN ;
 int WPA_KEY_MGMT_OWE ;
 int WPA_KEY_MGMT_WPS ;
 scalar_t__ has_wep_key (struct wpa_ssid*) ;
 scalar_t__ wpa_key_mgmt_wpa (int) ;

__attribute__((used)) static int wpa_supplicant_match_privacy(struct wpa_bss *bss,
     struct wpa_ssid *ssid)
{
 int privacy = 0;

 if (ssid->mixed_cell)
  return 1;
 if (has_wep_key(ssid))
  privacy = 1;
 if (wpa_key_mgmt_wpa(ssid->key_mgmt))
  privacy = 1;

 if (ssid->key_mgmt & WPA_KEY_MGMT_OSEN)
  privacy = 1;

 if (bss->caps & IEEE80211_CAP_PRIVACY)
  return privacy;
 return !privacy;
}
