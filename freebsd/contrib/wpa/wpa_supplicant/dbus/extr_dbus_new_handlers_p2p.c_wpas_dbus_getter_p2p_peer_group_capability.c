
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_dbus_property_desc {int dummy; } ;
struct peer_handler_args {int p2p_device_addr; TYPE_2__* wpa_s; } ;
struct p2p_peer_info {int group_capab; } ;
typedef int dbus_bool_t ;
struct TYPE_4__ {TYPE_1__* global; } ;
struct TYPE_3__ {int p2p; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_ERROR_FAILED ;
 int DBUS_ERROR_NO_MEMORY ;
 int DBUS_TYPE_BYTE ;
 int FALSE ;
 int TRUE ;
 int dbus_set_error (int *,int ,char*) ;
 int dbus_set_error_const (int *,int ,char*) ;
 struct p2p_peer_info* p2p_get_peer_found (int ,int ,int ) ;
 int wpas_dbus_simple_property_getter (int *,int ,int *,int *) ;

dbus_bool_t wpas_dbus_getter_p2p_peer_group_capability(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct peer_handler_args *peer_args = user_data;
 const struct p2p_peer_info *info;

 info = p2p_get_peer_found(peer_args->wpa_s->global->p2p,
      peer_args->p2p_device_addr, 0);
 if (info == ((void*)0)) {
  dbus_set_error(error, DBUS_ERROR_FAILED,
          "failed to find peer");
  return FALSE;
 }

 if (!wpas_dbus_simple_property_getter(iter, DBUS_TYPE_BYTE,
           &info->group_capab, error)) {
  dbus_set_error_const(error, DBUS_ERROR_NO_MEMORY, "no memory");
  return FALSE;
 }

 return TRUE;
}
