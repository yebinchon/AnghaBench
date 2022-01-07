
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {int dummy; } ;
struct hostapd_data {int ctrl_sock; int dhcp_sock; int sae_commit_queue; int l2_oui_queue; int l2_queue; int nr_db; int ctrl_dst; int driver; struct hostapd_iface* iface; struct hostapd_bss_config* conf; struct hostapd_config* iconf; int new_assoc_sta_cb; } ;
struct hostapd_config {int driver; } ;
struct hostapd_bss_config {int dummy; } ;


 int dl_list_init (int *) ;
 int hostapd_new_assoc_sta ;
 struct hostapd_data* os_zalloc (int) ;

struct hostapd_data *
hostapd_alloc_bss_data(struct hostapd_iface *hapd_iface,
         struct hostapd_config *conf,
         struct hostapd_bss_config *bss)
{
 struct hostapd_data *hapd;

 hapd = os_zalloc(sizeof(*hapd));
 if (hapd == ((void*)0))
  return ((void*)0);

 hapd->new_assoc_sta_cb = hostapd_new_assoc_sta;
 hapd->iconf = conf;
 hapd->conf = bss;
 hapd->iface = hapd_iface;
 if (conf)
  hapd->driver = conf->driver;
 hapd->ctrl_sock = -1;
 dl_list_init(&hapd->ctrl_dst);
 dl_list_init(&hapd->nr_db);
 hapd->dhcp_sock = -1;
 return hapd;
}
