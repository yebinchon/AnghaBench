
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; } ;
typedef scalar_t__ dbus_int32_t ;
struct TYPE_2__ {struct wpa_supplicant* p2p_init_wpa_s; } ;
typedef int DBusMessage ;


 int DBUS_TYPE_INT32 ;
 int DBUS_TYPE_INVALID ;
 int WPAS_DBUS_ERROR_UNKNOWN_ERROR ;
 int dbus_message_get_args (int *,int *,int ,scalar_t__*,int ) ;
 int * dbus_message_new_error (int *,int ,char*) ;
 int * wpas_dbus_error_no_memory (int *) ;
 scalar_t__ wpas_p2p_listen (struct wpa_supplicant*,unsigned int) ;

DBusMessage * wpas_dbus_handler_p2p_listen(DBusMessage *message,
        struct wpa_supplicant *wpa_s)
{
 dbus_int32_t timeout = 0;

 if (!dbus_message_get_args(message, ((void*)0), DBUS_TYPE_INT32, &timeout,
       DBUS_TYPE_INVALID))
  return wpas_dbus_error_no_memory(message);

 wpa_s = wpa_s->global->p2p_init_wpa_s;

 if (wpas_p2p_listen(wpa_s, (unsigned int) timeout)) {
  return dbus_message_new_error(message,
           WPAS_DBUS_ERROR_UNKNOWN_ERROR,
           "Could not start P2P listen");
 }

 return ((void*)0);
}
