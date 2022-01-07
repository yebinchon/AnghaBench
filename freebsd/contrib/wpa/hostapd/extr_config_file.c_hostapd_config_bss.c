
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_config {struct hostapd_bss_config* last_bss; scalar_t__ num_bss; struct hostapd_bss_config** bss; } ;
struct TYPE_2__ {int vlan; } ;
struct hostapd_bss_config {int iface; TYPE_1__ ssid; int * radius; } ;


 scalar_t__ IFNAMSIZ ;
 int MSG_ERROR ;
 int hostapd_config_defaults_bss (struct hostapd_bss_config*) ;
 int os_free (struct hostapd_bss_config*) ;
 int os_memcpy (int ,int ,scalar_t__) ;
 struct hostapd_bss_config** os_realloc_array (struct hostapd_bss_config**,scalar_t__,int) ;
 int os_strlcpy (int ,char const*,int) ;
 void* os_zalloc (int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int hostapd_config_bss(struct hostapd_config *conf, const char *ifname)
{
 struct hostapd_bss_config **all, *bss;

 if (*ifname == '\0')
  return -1;

 all = os_realloc_array(conf->bss, conf->num_bss + 1,
          sizeof(struct hostapd_bss_config *));
 if (all == ((void*)0)) {
  wpa_printf(MSG_ERROR, "Failed to allocate memory for "
      "multi-BSS entry");
  return -1;
 }
 conf->bss = all;

 bss = os_zalloc(sizeof(*bss));
 if (bss == ((void*)0))
  return -1;
 bss->radius = os_zalloc(sizeof(*bss->radius));
 if (bss->radius == ((void*)0)) {
  wpa_printf(MSG_ERROR, "Failed to allocate memory for "
      "multi-BSS RADIUS data");
  os_free(bss);
  return -1;
 }

 conf->bss[conf->num_bss++] = bss;
 conf->last_bss = bss;

 hostapd_config_defaults_bss(bss);
 os_strlcpy(bss->iface, ifname, sizeof(bss->iface));
 os_memcpy(bss->ssid.vlan, bss->iface, IFNAMSIZ + 1);

 return 0;
}
