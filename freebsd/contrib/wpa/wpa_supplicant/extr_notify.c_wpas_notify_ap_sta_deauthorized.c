
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int dummy; } ;


 int wpas_dbus_signal_p2p_peer_disconnected (struct wpa_supplicant*,int const*) ;
 int wpas_dbus_signal_sta_deauthorized (struct wpa_supplicant*,int const*) ;
 int wpas_dbus_unregister_sta (struct wpa_supplicant*,int const*) ;

__attribute__((used)) static void wpas_notify_ap_sta_deauthorized(struct wpa_supplicant *wpa_s,
         const u8 *sta,
         const u8 *p2p_dev_addr)
{
 wpas_dbus_signal_sta_deauthorized(wpa_s, sta);


 wpas_dbus_unregister_sta(wpa_s, sta);
}
