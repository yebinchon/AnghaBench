
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vendor_extension ;
struct wpabuf {int dummy; } ;
struct wpa_dbus_property_desc {int dummy; } ;
struct peer_handler_args {int p2p_device_addr; TYPE_2__* wpa_s; } ;
struct p2p_peer_info {struct wpabuf** wps_vendor_ext; } ;
typedef int dbus_bool_t ;
struct TYPE_4__ {TYPE_1__* global; } ;
struct TYPE_3__ {int p2p; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_ERROR_FAILED ;
 int DBUS_TYPE_BYTE ;
 int FALSE ;
 int P2P_MAX_WPS_VENDOR_EXT ;
 int TRUE ;
 int dbus_set_error (int *,int ,char*) ;
 int os_memset (struct wpabuf**,int ,int) ;
 struct p2p_peer_info* p2p_get_peer_found (int ,int ,int ) ;
 int wpas_dbus_simple_array_array_property_getter (int *,int ,struct wpabuf**,unsigned int,int *) ;

dbus_bool_t wpas_dbus_getter_p2p_peer_vendor_extension(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpabuf *vendor_extension[P2P_MAX_WPS_VENDOR_EXT];
 unsigned int i, num = 0;
 struct peer_handler_args *peer_args = user_data;
 const struct p2p_peer_info *info;

 info = p2p_get_peer_found(peer_args->wpa_s->global->p2p,
      peer_args->p2p_device_addr, 0);
 if (info == ((void*)0)) {
  dbus_set_error(error, DBUS_ERROR_FAILED,
          "failed to find peer");
  return FALSE;
 }


 os_memset(vendor_extension, 0, sizeof(vendor_extension));
 for (i = 0; i < P2P_MAX_WPS_VENDOR_EXT; i++) {
  if (info->wps_vendor_ext[i] == ((void*)0))
   continue;
  vendor_extension[num] = info->wps_vendor_ext[i];
  num++;
 }

 if (!wpas_dbus_simple_array_array_property_getter(iter, DBUS_TYPE_BYTE,
         vendor_extension,
         num, error))
  return FALSE;

 return TRUE;
}
