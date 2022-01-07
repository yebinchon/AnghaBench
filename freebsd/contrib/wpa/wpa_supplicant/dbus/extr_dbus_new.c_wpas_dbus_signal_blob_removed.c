
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int wpas_dbus_signal_blob (struct wpa_supplicant*,char const*,char*) ;

void wpas_dbus_signal_blob_removed(struct wpa_supplicant *wpa_s,
       const char *name)
{
 wpas_dbus_signal_blob(wpa_s, name, "BlobRemoved");
}
