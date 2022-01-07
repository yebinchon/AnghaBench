
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {scalar_t__* wep_key_len; } ;


 int NUM_WEP_KEYS ;

__attribute__((used)) static int has_wep_key(struct wpa_ssid *ssid)
{
 int i;

 for (i = 0; i < NUM_WEP_KEYS; i++) {
  if (ssid->wep_key_len[i])
   return 1;
 }

 return 0;
}
