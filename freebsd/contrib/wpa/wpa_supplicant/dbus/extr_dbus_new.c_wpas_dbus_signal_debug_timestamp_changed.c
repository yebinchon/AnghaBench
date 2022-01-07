
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_global {int dbus; } ;


 int WPAS_DBUS_NEW_INTERFACE ;
 int WPAS_DBUS_NEW_PATH ;
 int wpa_dbus_mark_property_changed (int ,int ,int ,char*) ;

void wpas_dbus_signal_debug_timestamp_changed(struct wpa_global *global)
{
 wpa_dbus_mark_property_changed(global->dbus, WPAS_DBUS_NEW_PATH,
           WPAS_DBUS_NEW_INTERFACE,
           "DebugTimestamp");
}
