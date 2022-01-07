
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {size_t disallow_aps_ssid_count; struct wpa_ssid_value* disallow_aps_ssid; } ;
struct wpa_ssid_value {size_t ssid_len; int ssid; } ;


 scalar_t__ os_memcmp (int const*,int ,size_t) ;

int disallowed_ssid(struct wpa_supplicant *wpa_s, const u8 *ssid,
      size_t ssid_len)
{
 size_t i;

 if (wpa_s->disallow_aps_ssid == ((void*)0) || ssid == ((void*)0))
  return 0;

 for (i = 0; i < wpa_s->disallow_aps_ssid_count; i++) {
  struct wpa_ssid_value *s = &wpa_s->disallow_aps_ssid[i];
  if (ssid_len == s->ssid_len &&
      os_memcmp(ssid, s->ssid, ssid_len) == 0)
   return 1;
 }

 return 0;
}
