
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dbus_ctrl_interface; } ;
struct wpa_global {int binder; int * dbus; TYPE_1__ params; } ;


 int wpas_binder_init (struct wpa_global*) ;
 int * wpas_dbus_init (struct wpa_global*) ;

int wpas_notify_supplicant_initialized(struct wpa_global *global)
{
 return 0;
}
