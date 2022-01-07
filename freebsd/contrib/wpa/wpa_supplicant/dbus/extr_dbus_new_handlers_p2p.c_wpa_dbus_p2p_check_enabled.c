
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; } ;
typedef int dbus_bool_t ;
struct TYPE_2__ {int * p2p; scalar_t__ p2p_disabled; } ;
typedef int DBusMessage ;
typedef int DBusError ;


 int DBUS_ERROR_FAILED ;
 int FALSE ;
 int TRUE ;
 int * dbus_message_new_error (int *,int ,char*) ;
 int dbus_set_error_const (int *,int ,char*) ;

__attribute__((used)) static dbus_bool_t wpa_dbus_p2p_check_enabled(struct wpa_supplicant *wpa_s,
           DBusMessage *message,
           DBusMessage **out_reply,
           DBusError *error)
{

 if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == ((void*)0)) {
  if (out_reply) {
   *out_reply = dbus_message_new_error(
    message, DBUS_ERROR_FAILED,
    "P2P is not available for this interface");
  }
  dbus_set_error_const(error, DBUS_ERROR_FAILED,
         "P2P is not available for this interface");
  return FALSE;
 }
 return TRUE;
}
