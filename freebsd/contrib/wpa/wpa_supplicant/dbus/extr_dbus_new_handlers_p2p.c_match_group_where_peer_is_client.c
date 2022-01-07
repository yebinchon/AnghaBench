
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {char* dbus_groupobj_path; } ;
struct peer_group_data {char** paths; int nb_paths; int error; int wpa_s; TYPE_1__* info; } ;
struct p2p_group_config {int ssid_len; int ssid; } ;
struct p2p_group {int dummy; } ;
struct TYPE_2__ {int p2p_device_addr; } ;


 int ENOMEM ;
 char** os_realloc_array (char**,int,int) ;
 struct p2p_group_config* p2p_group_get_config (struct p2p_group*) ;
 int p2p_group_is_client_connected (struct p2p_group*,int ) ;
 struct wpa_supplicant* wpas_get_p2p_go_iface (int ,int ,int ) ;

__attribute__((used)) static int match_group_where_peer_is_client(struct p2p_group *group,
         void *user_data)
{
 struct peer_group_data *data = user_data;
 const struct p2p_group_config *cfg;
 struct wpa_supplicant *wpa_s_go;
 char **paths;

 if (!p2p_group_is_client_connected(group, data->info->p2p_device_addr))
  return 1;

 cfg = p2p_group_get_config(group);

 wpa_s_go = wpas_get_p2p_go_iface(data->wpa_s, cfg->ssid,
      cfg->ssid_len);
 if (wpa_s_go == ((void*)0))
  return 1;

 paths = os_realloc_array(data->paths, data->nb_paths + 1,
     sizeof(char *));
 if (paths == ((void*)0))
  goto out_of_memory;

 data->paths = paths;
 data->paths[data->nb_paths] = wpa_s_go->dbus_groupobj_path;
 data->nb_paths++;

 return 1;

out_of_memory:
 data->error = ENOMEM;
 return 0;
}
