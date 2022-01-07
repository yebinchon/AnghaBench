
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_qos_map ) (int ,int const*,int ) ;} ;


 int stub1 (int ,int const*,int ) ;

int hostapd_drv_set_qos_map(struct hostapd_data *hapd,
       const u8 *qos_map_set, u8 qos_map_set_len)
{
 if (!hapd->driver || !hapd->driver->set_qos_map || !hapd->drv_priv)
  return 0;
 return hapd->driver->set_qos_map(hapd->drv_priv, qos_map_set,
      qos_map_set_len);
}
