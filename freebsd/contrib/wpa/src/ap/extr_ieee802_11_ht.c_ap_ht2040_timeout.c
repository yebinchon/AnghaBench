
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {int secondary_ch; TYPE_1__* conf; } ;
struct TYPE_2__ {int secondary_channel; } ;


 int MSG_INFO ;
 int ieee802_11_set_beacons (struct hostapd_iface*) ;
 int wpa_printf (int ,char*) ;

void ap_ht2040_timeout(void *eloop_data, void *user_data)
{
 struct hostapd_iface *iface = eloop_data;

 wpa_printf(MSG_INFO, "Switching to 40 MHz operation");

 iface->conf->secondary_channel = iface->secondary_ch;
 ieee802_11_set_beacons(iface);
}
