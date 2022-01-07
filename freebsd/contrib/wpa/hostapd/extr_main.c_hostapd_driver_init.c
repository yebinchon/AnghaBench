
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct wpa_init_params {int* bssid; size_t num_bridge; scalar_t__** bridge; int own_addr; int use_pae_group_addr; int driver_params; int ifname; int * global_priv; } ;
struct wpa_driver_capa {int max_acl_mac_addrs; int extended_capa_len; int extended_capa_mask; int extended_capa; int probe_resp_offloads; int smps_modes; int flags; } ;
typedef scalar_t__* wowlan_triggers ;
struct hostapd_iface {int drv_max_acl_mac_addrs; int extended_capa_len; int extended_capa_mask; int extended_capa; int probe_resp_offloads; int smps_modes; int drv_flags; int interfaces; struct hostapd_data** bss; } ;
struct hostapd_data {int * drv_priv; TYPE_3__* driver; int own_addr; struct hostapd_bss_config* conf; TYPE_2__* iface; TYPE_1__* iconf; } ;
struct hostapd_bss_config {int* bssid; int wowlan_triggers; scalar_t__* bridge; int use_pae_group_addr; int iface; } ;
typedef int params ;
struct TYPE_8__ {int ** drv_priv; } ;
struct TYPE_7__ {scalar_t__ (* get_capa ) (int *,struct wpa_driver_capa*) ;scalar_t__ (* set_wowlan ) (int *,scalar_t__**) ;int name; int * (* hapd_init ) (struct hostapd_data*,struct wpa_init_params*) ;int * (* global_init ) (int ) ;} ;
struct TYPE_6__ {size_t num_bss; struct hostapd_data** bss; } ;
struct TYPE_5__ {int driver_params; } ;


 int MSG_ERROR ;
 TYPE_4__ global ;
 int hostapd_get_ext_capa (struct hostapd_iface*) ;
 scalar_t__** os_calloc (size_t,int) ;
 int os_free (scalar_t__**) ;
 int os_memset (struct wpa_init_params*,int ,int) ;
 int * stub1 (int ) ;
 int * stub2 (struct hostapd_data*,struct wpa_init_params*) ;
 scalar_t__ stub3 (int *,struct wpa_driver_capa*) ;
 scalar_t__ stub4 (int *,scalar_t__**) ;
 TYPE_3__** wpa_drivers ;
 scalar_t__** wpa_get_wowlan_triggers (int ,struct wpa_driver_capa*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int hostapd_driver_init(struct hostapd_iface *iface)
{
 struct wpa_init_params params;
 size_t i;
 struct hostapd_data *hapd = iface->bss[0];
 struct hostapd_bss_config *conf = hapd->conf;
 u8 *b = conf->bssid;
 struct wpa_driver_capa capa;

 if (hapd->driver == ((void*)0) || hapd->driver->hapd_init == ((void*)0)) {
  wpa_printf(MSG_ERROR, "No hostapd driver wrapper available");
  return -1;
 }


 if (!(b[0] | b[1] | b[2] | b[3] | b[4] | b[5]))
  b = ((void*)0);

 os_memset(&params, 0, sizeof(params));
 for (i = 0; wpa_drivers[i]; i++) {
  if (wpa_drivers[i] != hapd->driver)
   continue;

  if (global.drv_priv[i] == ((void*)0) &&
      wpa_drivers[i]->global_init) {
   global.drv_priv[i] =
    wpa_drivers[i]->global_init(iface->interfaces);
   if (global.drv_priv[i] == ((void*)0)) {
    wpa_printf(MSG_ERROR, "Failed to initialize "
        "driver '%s'",
        wpa_drivers[i]->name);
    return -1;
   }
  }

  params.global_priv = global.drv_priv[i];
  break;
 }
 params.bssid = b;
 params.ifname = hapd->conf->iface;
 params.driver_params = hapd->iconf->driver_params;
 params.use_pae_group_addr = hapd->conf->use_pae_group_addr;

 params.num_bridge = hapd->iface->num_bss;
 params.bridge = os_calloc(hapd->iface->num_bss, sizeof(char *));
 if (params.bridge == ((void*)0))
  return -1;
 for (i = 0; i < hapd->iface->num_bss; i++) {
  struct hostapd_data *bss = hapd->iface->bss[i];
  if (bss->conf->bridge[0])
   params.bridge[i] = bss->conf->bridge;
 }

 params.own_addr = hapd->own_addr;

 hapd->drv_priv = hapd->driver->hapd_init(hapd, &params);
 os_free(params.bridge);
 if (hapd->drv_priv == ((void*)0)) {
  wpa_printf(MSG_ERROR, "%s driver initialization failed.",
      hapd->driver->name);
  hapd->driver = ((void*)0);
  return -1;
 }

 if (hapd->driver->get_capa &&
     hapd->driver->get_capa(hapd->drv_priv, &capa) == 0) {
  struct wowlan_triggers *triggs;

  iface->drv_flags = capa.flags;
  iface->smps_modes = capa.smps_modes;
  iface->probe_resp_offloads = capa.probe_resp_offloads;



  iface->extended_capa = capa.extended_capa;
  iface->extended_capa_mask = capa.extended_capa_mask;
  iface->extended_capa_len = capa.extended_capa_len;
  iface->drv_max_acl_mac_addrs = capa.max_acl_mac_addrs;





  hostapd_get_ext_capa(iface);

  triggs = wpa_get_wowlan_triggers(conf->wowlan_triggers, &capa);
  if (triggs && hapd->driver->set_wowlan) {
   if (hapd->driver->set_wowlan(hapd->drv_priv, triggs))
    wpa_printf(MSG_ERROR, "set_wowlan failed");
  }
  os_free(triggs);
 }

 return 0;
}
