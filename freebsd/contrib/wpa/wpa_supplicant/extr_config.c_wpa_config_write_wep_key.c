
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {scalar_t__* wep_key_len; int * wep_key; } ;


 char* wpa_config_write_string (int ,scalar_t__) ;

__attribute__((used)) static char * wpa_config_write_wep_key(struct wpa_ssid *ssid, int idx)
{
 if (ssid->wep_key_len[idx] == 0)
  return ((void*)0);
 return wpa_config_write_string(ssid->wep_key[idx],
           ssid->wep_key_len[idx]);
}
