
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct hostap_sta_driver_data {int dummy; } ;
struct TYPE_2__ {int (* read_sta_data ) (int ,struct hostap_sta_driver_data*,int const*) ;} ;


 int stub1 (int ,struct hostap_sta_driver_data*,int const*) ;

__attribute__((used)) static inline int hostapd_drv_read_sta_data(
 struct hostapd_data *hapd, struct hostap_sta_driver_data *data,
 const u8 *addr)
{
 if (hapd->driver == ((void*)0) || hapd->driver->read_sta_data == ((void*)0))
  return -1;
 return hapd->driver->read_sta_data(hapd->drv_priv, data, addr);
}
