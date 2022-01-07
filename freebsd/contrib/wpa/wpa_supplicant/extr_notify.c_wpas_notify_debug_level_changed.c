
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_global {int dummy; } ;


 int wpas_dbus_signal_debug_level_changed (struct wpa_global*) ;

void wpas_notify_debug_level_changed(struct wpa_global *global)
{
 wpas_dbus_signal_debug_level_changed(global);
}
