
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_config {int newlink_cb; struct atheros_driver_data* ctx; } ;
struct atheros_driver_data {int * netlink; } ;


 int atheros_get_we_version (struct atheros_driver_data*) ;
 int atheros_wireless_event_rtm_newlink ;
 int * netlink_init (struct netlink_config*) ;
 int os_free (struct netlink_config*) ;
 struct netlink_config* os_zalloc (int) ;

__attribute__((used)) static int
atheros_wireless_event_init(struct atheros_driver_data *drv)
{
 struct netlink_config *cfg;

 atheros_get_we_version(drv);

 cfg = os_zalloc(sizeof(*cfg));
 if (cfg == ((void*)0))
  return -1;
 cfg->ctx = drv;
 cfg->newlink_cb = atheros_wireless_event_rtm_newlink;
 drv->netlink = netlink_init(cfg);
 if (drv->netlink == ((void*)0)) {
  os_free(cfg);
  return -1;
 }

 return 0;
}
