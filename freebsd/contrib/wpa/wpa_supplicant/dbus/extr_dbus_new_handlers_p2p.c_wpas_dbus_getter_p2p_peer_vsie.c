
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wpa_dbus_property_desc {int dummy; } ;
struct peer_handler_args {int p2p_device_addr; TYPE_3__* wpa_s; } ;
struct p2p_peer_info {TYPE_1__* vendor_elems; } ;
typedef int dbus_bool_t ;
struct TYPE_6__ {TYPE_2__* global; } ;
struct TYPE_5__ {int p2p; } ;
struct TYPE_4__ {int used; scalar_t__ buf; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_ERROR_FAILED ;
 int DBUS_TYPE_BYTE ;
 int FALSE ;
 int dbus_set_error (int *,int ,char*) ;
 struct p2p_peer_info* p2p_get_peer_found (int ,int ,int ) ;
 int wpas_dbus_simple_array_property_getter (int *,int ,char*,int ,int *) ;

dbus_bool_t wpas_dbus_getter_p2p_peer_vsie(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct peer_handler_args *peer_args = user_data;
 const struct p2p_peer_info *info;

 info = p2p_get_peer_found(peer_args->wpa_s->global->p2p,
      peer_args->p2p_device_addr, 0);
 if (!info) {
  dbus_set_error(error, DBUS_ERROR_FAILED, "failed to find peer");
  return FALSE;
 }

 if (!info->vendor_elems)
  return wpas_dbus_simple_array_property_getter(iter,
             DBUS_TYPE_BYTE,
             ((void*)0), 0, error);

 return wpas_dbus_simple_array_property_getter(
  iter, DBUS_TYPE_BYTE, (char *) info->vendor_elems->buf,
  info->vendor_elems->used, error);
}
