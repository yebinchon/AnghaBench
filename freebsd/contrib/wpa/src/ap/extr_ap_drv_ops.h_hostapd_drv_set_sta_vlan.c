
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_sta_vlan ) (int ,int const*,char const*,int) ;} ;


 int stub1 (int ,int const*,char const*,int) ;

__attribute__((used)) static inline int hostapd_drv_set_sta_vlan(const char *ifname,
        struct hostapd_data *hapd,
        const u8 *addr, int vlan_id)
{
 if (hapd->driver == ((void*)0) || hapd->driver->set_sta_vlan == ((void*)0))
  return 0;
 return hapd->driver->set_sta_vlan(hapd->drv_priv, addr, ifname,
       vlan_id);
}
