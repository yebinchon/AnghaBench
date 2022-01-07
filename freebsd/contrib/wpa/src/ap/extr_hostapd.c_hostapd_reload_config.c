
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {size_t num_bss; struct hostapd_data** bss; struct hostapd_config* conf; struct hapd_interfaces* interfaces; int * config_fname; } ;
struct hostapd_data {TYPE_1__* conf; struct hostapd_config* iconf; } ;
struct hostapd_config {TYPE_1__** bss; int vht_capab; int ht_capab; int ieee80211ac; int ieee80211n; int secondary_channel; int acs; int channel; } ;
struct hapd_interfaces {size_t count; struct hostapd_iface** iface; struct hostapd_config* (* config_read_cb ) (int *) ;} ;
struct TYPE_2__ {int iface; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int hostapd_clear_old (struct hostapd_iface*) ;
 int hostapd_config_free (struct hostapd_config*) ;
 int hostapd_enable_iface (struct hostapd_iface*) ;
 int hostapd_get_oper_centr_freq_seg0_idx (struct hostapd_config*) ;
 int hostapd_get_oper_centr_freq_seg1_idx (struct hostapd_config*) ;
 int hostapd_get_oper_chwidth (struct hostapd_config*) ;
 scalar_t__ hostapd_iface_conf_changed (struct hostapd_config*,struct hostapd_config*) ;
 struct hostapd_iface* hostapd_init (struct hapd_interfaces*,char*) ;
 int hostapd_reload_bss (struct hostapd_data*) ;
 int hostapd_remove_iface (struct hapd_interfaces*,int ) ;
 int hostapd_set_oper_centr_freq_seg0_idx (struct hostapd_config*,int ) ;
 int hostapd_set_oper_centr_freq_seg1_idx (struct hostapd_config*,int ) ;
 int hostapd_set_oper_chwidth (struct hostapd_config*,int ) ;
 int os_free (char*) ;
 char* os_strdup (int *) ;
 struct hostapd_config* stub1 (int *) ;
 int wpa_printf (int ,char*) ;

int hostapd_reload_config(struct hostapd_iface *iface)
{
 struct hapd_interfaces *interfaces = iface->interfaces;
 struct hostapd_data *hapd = iface->bss[0];
 struct hostapd_config *newconf, *oldconf;
 size_t j;

 if (iface->config_fname == ((void*)0)) {

  hostapd_clear_old(iface);
  for (j = 0; j < iface->num_bss; j++)
   hostapd_reload_bss(iface->bss[j]);
  return 0;
 }

 if (iface->interfaces == ((void*)0) ||
     iface->interfaces->config_read_cb == ((void*)0))
  return -1;
 newconf = iface->interfaces->config_read_cb(iface->config_fname);
 if (newconf == ((void*)0))
  return -1;

 hostapd_clear_old(iface);

 oldconf = hapd->iconf;
 if (hostapd_iface_conf_changed(newconf, oldconf)) {
  char *fname;
  int res;

  wpa_printf(MSG_DEBUG,
      "Configuration changes include interface/BSS modification - force full disable+enable sequence");
  fname = os_strdup(iface->config_fname);
  if (!fname) {
   hostapd_config_free(newconf);
   return -1;
  }
  hostapd_remove_iface(interfaces, hapd->conf->iface);
  iface = hostapd_init(interfaces, fname);
  os_free(fname);
  hostapd_config_free(newconf);
  if (!iface) {
   wpa_printf(MSG_ERROR,
       "Failed to initialize interface on config reload");
   return -1;
  }
  iface->interfaces = interfaces;
  interfaces->iface[interfaces->count] = iface;
  interfaces->count++;
  res = hostapd_enable_iface(iface);
  if (res < 0)
   wpa_printf(MSG_ERROR,
       "Failed to enable interface on config reload");
  return res;
 }
 iface->conf = newconf;

 for (j = 0; j < iface->num_bss; j++) {
  hapd = iface->bss[j];
  hapd->iconf = newconf;
  hapd->iconf->channel = oldconf->channel;
  hapd->iconf->acs = oldconf->acs;
  hapd->iconf->secondary_channel = oldconf->secondary_channel;
  hapd->iconf->ieee80211n = oldconf->ieee80211n;
  hapd->iconf->ieee80211ac = oldconf->ieee80211ac;
  hapd->iconf->ht_capab = oldconf->ht_capab;
  hapd->iconf->vht_capab = oldconf->vht_capab;
  hostapd_set_oper_chwidth(hapd->iconf,
      hostapd_get_oper_chwidth(oldconf));
  hostapd_set_oper_centr_freq_seg0_idx(
   hapd->iconf,
   hostapd_get_oper_centr_freq_seg0_idx(oldconf));
  hostapd_set_oper_centr_freq_seg1_idx(
   hapd->iconf,
   hostapd_get_oper_centr_freq_seg1_idx(oldconf));
  hapd->conf = newconf->bss[j];
  hostapd_reload_bss(hapd);
 }

 hostapd_config_free(oldconf);


 return 0;
}
