
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int drv_priv; TYPE_2__* driver; TYPE_1__* conf; } ;
struct TYPE_4__ {int (* set_wds_sta ) (int ,int const*,int,int,char const*,char*) ;} ;
struct TYPE_3__ {char* wds_bridge; char* bridge; } ;


 int stub1 (int ,int const*,int,int,char const*,char*) ;

int hostapd_set_wds_sta(struct hostapd_data *hapd, char *ifname_wds,
   const u8 *addr, int aid, int val)
{
 const char *bridge = ((void*)0);

 if (hapd->driver == ((void*)0) || hapd->driver->set_wds_sta == ((void*)0))
  return -1;
 if (hapd->conf->wds_bridge[0])
  bridge = hapd->conf->wds_bridge;
 else if (hapd->conf->bridge[0])
  bridge = hapd->conf->bridge;
 return hapd->driver->set_wds_sta(hapd->drv_priv, addr, aid, val,
      bridge, ifname_wds);
}
