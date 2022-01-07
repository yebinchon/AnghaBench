
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_iface {int num_bss; struct hostapd_data** bss; TYPE_2__* conf; struct hapd_interfaces* interfaces; int phy; } ;
struct hostapd_data {char* iface; TYPE_1__* conf; struct hostapd_data* msg_ctx; } ;
struct hostapd_config {int num_bss; struct hostapd_data** bss; } ;
struct hostapd_bss_config {char* iface; TYPE_1__* conf; struct hostapd_bss_config* msg_ctx; } ;
struct hapd_interfaces {size_t count; struct hostapd_config* (* config_read_cb ) (char const*) ;struct hostapd_iface** iface; } ;
struct TYPE_4__ {int num_bss; struct hostapd_data** bss; struct hostapd_data* last_bss; } ;
struct TYPE_3__ {scalar_t__ logger_stdout_level; } ;


 int MSG_ERROR ;
 int MSG_INFO ;
 struct hostapd_data* hostapd_alloc_bss_data (struct hostapd_iface*,TYPE_2__*,struct hostapd_data*) ;
 int hostapd_config_free (struct hostapd_config*) ;
 int hostapd_drv_none (struct hostapd_data*) ;
 struct hostapd_iface* hostapd_init (struct hapd_interfaces*,char const*) ;
 int hostapd_interface_deinit_free (struct hostapd_iface*) ;
 scalar_t__ ifname_in_use (struct hapd_interfaces*,char const*) ;
 void* os_realloc_array (struct hostapd_data**,int,int) ;
 scalar_t__ os_strcmp (int ,char const*) ;
 int os_strlcpy (int ,char const*,int) ;
 struct hostapd_config* stub1 (char const*) ;
 int wpa_printf (int ,char*,...) ;

struct hostapd_iface *
hostapd_interface_init_bss(struct hapd_interfaces *interfaces, const char *phy,
      const char *config_fname, int debug)
{
 struct hostapd_iface *new_iface = ((void*)0), *iface = ((void*)0);
 struct hostapd_data *hapd;
 int k;
 size_t i, bss_idx;

 if (!phy || !*phy)
  return ((void*)0);

 for (i = 0; i < interfaces->count; i++) {
  if (os_strcmp(interfaces->iface[i]->phy, phy) == 0) {
   iface = interfaces->iface[i];
   break;
  }
 }

 wpa_printf(MSG_INFO, "Configuration file: %s (phy %s)%s",
     config_fname, phy, iface ? "" : " --> new PHY");
 if (iface) {
  struct hostapd_config *conf;
  struct hostapd_bss_config **tmp_conf;
  struct hostapd_data **tmp_bss;
  struct hostapd_bss_config *bss;
  const char *ifname;


  conf = interfaces->config_read_cb(config_fname);
  if (conf == ((void*)0))
   return ((void*)0);
  if (conf->num_bss > 1) {
   wpa_printf(MSG_ERROR, "Multiple BSSes specified in BSS-config");
   hostapd_config_free(conf);
   return ((void*)0);
  }

  ifname = conf->bss[0]->iface;
  if (ifname[0] != '\0' && ifname_in_use(interfaces, ifname)) {
   wpa_printf(MSG_ERROR,
       "Interface name %s already in use", ifname);
   hostapd_config_free(conf);
   return ((void*)0);
  }

  tmp_conf = os_realloc_array(
   iface->conf->bss, iface->conf->num_bss + 1,
   sizeof(struct hostapd_bss_config *));
  tmp_bss = os_realloc_array(iface->bss, iface->num_bss + 1,
        sizeof(struct hostapd_data *));
  if (tmp_bss)
   iface->bss = tmp_bss;
  if (tmp_conf) {
   iface->conf->bss = tmp_conf;
   iface->conf->last_bss = tmp_conf[0];
  }
  if (tmp_bss == ((void*)0) || tmp_conf == ((void*)0)) {
   hostapd_config_free(conf);
   return ((void*)0);
  }
  bss = iface->conf->bss[iface->conf->num_bss] = conf->bss[0];
  iface->conf->num_bss++;

  hapd = hostapd_alloc_bss_data(iface, iface->conf, bss);
  if (hapd == ((void*)0)) {
   iface->conf->num_bss--;
   hostapd_config_free(conf);
   return ((void*)0);
  }
  iface->conf->last_bss = bss;
  iface->bss[iface->num_bss] = hapd;
  hapd->msg_ctx = hapd;

  bss_idx = iface->num_bss++;
  conf->num_bss--;
  conf->bss[0] = ((void*)0);
  hostapd_config_free(conf);
 } else {

  new_iface = iface = hostapd_init(interfaces, config_fname);
  if (!iface)
   return ((void*)0);
  os_strlcpy(iface->phy, phy, sizeof(iface->phy));
  iface->interfaces = interfaces;
  bss_idx = 0;
 }

 for (k = 0; k < debug; k++) {
  if (iface->bss[bss_idx]->conf->logger_stdout_level > 0)
   iface->bss[bss_idx]->conf->logger_stdout_level--;
 }

 if (iface->conf->bss[bss_idx]->iface[0] == '\0' &&
     !hostapd_drv_none(iface->bss[bss_idx])) {
  wpa_printf(MSG_ERROR, "Interface name not specified in %s",
      config_fname);
  if (new_iface)
   hostapd_interface_deinit_free(new_iface);
  return ((void*)0);
 }

 return iface;
}
