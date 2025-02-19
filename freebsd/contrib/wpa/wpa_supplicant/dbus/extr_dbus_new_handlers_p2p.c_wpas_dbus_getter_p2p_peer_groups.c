
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; int dbus_groupobj_path; } ;
struct wpa_dbus_property_desc {int dummy; } ;
struct peer_handler_args {struct wpa_supplicant* wpa_s; int p2p_device_addr; } ;
struct peer_group_data {int nb_paths; int * paths; scalar_t__ error; struct p2p_peer_info const* info; struct wpa_supplicant* wpa_s; } ;
struct p2p_peer_info {int p2p_device_addr; } ;
typedef int dbus_bool_t ;
typedef int data ;
struct TYPE_2__ {int p2p; struct wpa_supplicant* p2p_init_wpa_s; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_ERROR_FAILED ;
 int DBUS_ERROR_NO_MEMORY ;
 int DBUS_TYPE_OBJECT_PATH ;
 int FALSE ;
 int dbus_set_error (int *,int ,char*) ;
 int dbus_set_error_const (int *,int ,char*) ;
 int match_group_where_peer_is_client ;
 int * os_calloc (int,int) ;
 int os_free (int *) ;
 int os_memset (struct peer_group_data*,int ,int) ;
 struct p2p_peer_info* p2p_get_peer_found (int ,int ,int ) ;
 int p2p_loop_on_all_groups (int ,int ,struct peer_group_data*) ;
 int wpas_dbus_simple_array_property_getter (int *,int ,int *,int,int *) ;
 struct wpa_supplicant* wpas_get_p2p_client_iface (struct wpa_supplicant*,int ) ;

dbus_bool_t wpas_dbus_getter_p2p_peer_groups(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct peer_handler_args *peer_args = user_data;
 const struct p2p_peer_info *info;
 struct peer_group_data data;
 struct wpa_supplicant *wpa_s, *wpa_s_go;
 dbus_bool_t success = FALSE;

 info = p2p_get_peer_found(peer_args->wpa_s->global->p2p,
      peer_args->p2p_device_addr, 0);
 if (info == ((void*)0)) {
  dbus_set_error(error, DBUS_ERROR_FAILED,
          "failed to find peer");
  return FALSE;
 }

 os_memset(&data, 0, sizeof(data));

 wpa_s = peer_args->wpa_s;
 wpa_s = wpa_s->global->p2p_init_wpa_s;

 wpa_s_go = wpas_get_p2p_client_iface(wpa_s, info->p2p_device_addr);
 if (wpa_s_go) {
  data.paths = os_calloc(1, sizeof(char *));
  if (data.paths == ((void*)0))
   goto out_of_memory;
  data.paths[0] = wpa_s_go->dbus_groupobj_path;
  data.nb_paths = 1;
 }

 data.wpa_s = peer_args->wpa_s;
 data.info = info;

 p2p_loop_on_all_groups(peer_args->wpa_s->global->p2p,
          match_group_where_peer_is_client, &data);
 if (data.error)
  goto out_of_memory;

 if (data.paths == ((void*)0)) {
  return wpas_dbus_simple_array_property_getter(
   iter, DBUS_TYPE_OBJECT_PATH, ((void*)0), 0, error);
 }

 success = wpas_dbus_simple_array_property_getter(iter,
        DBUS_TYPE_OBJECT_PATH,
        data.paths,
        data.nb_paths, error);
 goto out;

out_of_memory:
 dbus_set_error_const(error, DBUS_ERROR_NO_MEMORY, "no memory");
out:
 os_free(data.paths);
 return success;
}
