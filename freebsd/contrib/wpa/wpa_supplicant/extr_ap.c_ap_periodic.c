
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ ap_iface; } ;


 int hostapd_periodic_iface (scalar_t__) ;

void ap_periodic(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->ap_iface)
  hostapd_periodic_iface(wpa_s->ap_iface);
}
