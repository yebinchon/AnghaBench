
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int TRUE ;
 int wpas_dbus_signal_bss (struct wpa_supplicant*,char const*,char*,int ) ;

__attribute__((used)) static void wpas_dbus_signal_bss_added(struct wpa_supplicant *wpa_s,
           const char *bss_obj_path)
{
 wpas_dbus_signal_bss(wpa_s, bss_obj_path, "BSSAdded", TRUE);
}
