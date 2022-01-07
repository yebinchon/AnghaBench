
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; int confname; } ;
struct TYPE_2__ {int update_config; } ;
typedef int DBusMessage ;


 int wpa_config_write (int ,TYPE_1__*) ;
 int * wpas_dbus_error_unknown_error (int *,char*) ;

DBusMessage * wpas_dbus_handler_save_config(DBusMessage *message,
         struct wpa_supplicant *wpa_s)
{
 int ret;

 if (!wpa_s->conf->update_config) {
  return wpas_dbus_error_unknown_error(
   message,
   "Not allowed to update configuration (update_config=0)");
 }

 ret = wpa_config_write(wpa_s->confname, wpa_s->conf);
 if (ret)
  return wpas_dbus_error_unknown_error(
   message, "Failed to update configuration");
 return ((void*)0);
}
