
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_ssid {int wpa_psk_file; TYPE_1__* wpa_psk; int * wpa_passphrase; } ;
struct hostapd_bss_config {struct hostapd_ssid ssid; } ;
struct TYPE_2__ {int group; } ;


 int MSG_DEBUG ;
 int hostapd_config_read_wpa_psk (int ,struct hostapd_ssid*) ;
 scalar_t__ hostapd_derive_psk (struct hostapd_ssid*) ;
 int wpa_printf (int ,char*) ;

int hostapd_setup_wpa_psk(struct hostapd_bss_config *conf)
{
 struct hostapd_ssid *ssid = &conf->ssid;

 if (ssid->wpa_passphrase != ((void*)0)) {
  if (ssid->wpa_psk != ((void*)0)) {
   wpa_printf(MSG_DEBUG, "Using pre-configured WPA PSK "
       "instead of passphrase");
  } else {
   wpa_printf(MSG_DEBUG, "Deriving WPA PSK based on "
       "passphrase");
   if (hostapd_derive_psk(ssid) < 0)
    return -1;
  }
  ssid->wpa_psk->group = 1;
 }

 return hostapd_config_read_wpa_psk(ssid->wpa_psk_file, &conf->ssid);
}
