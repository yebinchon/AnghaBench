
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* hapd_get_ssid ) (int ,int *,size_t) ;} ;


 int stub1 (int ,int *,size_t) ;

int hostapd_get_ssid(struct hostapd_data *hapd, u8 *buf, size_t len)
{
 if (hapd->driver == ((void*)0) || hapd->driver->hapd_get_ssid == ((void*)0))
  return 0;
 return hapd->driver->hapd_get_ssid(hapd->drv_priv, buf, len);
}
