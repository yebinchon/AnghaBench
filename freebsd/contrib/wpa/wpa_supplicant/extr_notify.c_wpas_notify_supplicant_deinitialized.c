
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_global {scalar_t__ binder; scalar_t__ dbus; } ;


 int wpas_binder_deinit (scalar_t__) ;
 int wpas_dbus_deinit (scalar_t__) ;

void wpas_notify_supplicant_deinitialized(struct wpa_global *global)
{
}
