
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_event_fail {int dummy; } ;
struct wpa_supplicant {int dummy; } ;



__attribute__((used)) static inline void wpas_dbus_signal_wps_event_fail(
 struct wpa_supplicant *wpa_s, struct wps_event_fail *fail)
{
}
