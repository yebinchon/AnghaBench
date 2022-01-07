
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int dummy; } ;


 int wpas_notify_ap_sta_authorized (struct wpa_supplicant*,int const*,int const*) ;
 int wpas_notify_ap_sta_deauthorized (struct wpa_supplicant*,int const*,int const*) ;

void wpas_notify_sta_authorized(struct wpa_supplicant *wpa_s,
    const u8 *mac_addr, int authorized,
    const u8 *p2p_dev_addr)
{
 if (authorized)
  wpas_notify_ap_sta_authorized(wpa_s, mac_addr, p2p_dev_addr);
 else
  wpas_notify_ap_sta_deauthorized(wpa_s, mac_addr, p2p_dev_addr);
}
