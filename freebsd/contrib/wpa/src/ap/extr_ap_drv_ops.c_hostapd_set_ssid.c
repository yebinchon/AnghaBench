
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* hapd_set_ssid ) (int ,int const*,size_t) ;} ;


 int stub1 (int ,int const*,size_t) ;

int hostapd_set_ssid(struct hostapd_data *hapd, const u8 *buf, size_t len)
{
 if (hapd->driver == ((void*)0) || hapd->driver->hapd_set_ssid == ((void*)0))
  return 0;
 return hapd->driver->hapd_set_ssid(hapd->drv_priv, buf, len);
}
