
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* add_sta_node ) (int ,int const*,int ) ;} ;


 int stub1 (int ,int const*,int ) ;

int hostapd_add_sta_node(struct hostapd_data *hapd, const u8 *addr,
    u16 auth_alg)
{
 if (hapd->driver == ((void*)0) || hapd->driver->add_sta_node == ((void*)0))
  return 0;
 return hapd->driver->add_sta_node(hapd->drv_priv, addr, auth_alg);
}
