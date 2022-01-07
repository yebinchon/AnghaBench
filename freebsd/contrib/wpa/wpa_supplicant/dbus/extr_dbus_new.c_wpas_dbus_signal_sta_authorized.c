
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int dummy; } ;


 int wpas_dbus_signal_sta (struct wpa_supplicant*,int const*,char*) ;

void wpas_dbus_signal_sta_authorized(struct wpa_supplicant *wpa_s,
         const u8 *sta)
{
 wpas_dbus_signal_sta(wpa_s, sta, "StaAuthorized");
}
