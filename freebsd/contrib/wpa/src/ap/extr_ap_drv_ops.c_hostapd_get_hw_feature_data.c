
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hostapd_hw_modes {int dummy; } ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {struct hostapd_hw_modes* (* get_hw_feature_data ) (int ,int *,int *,int *) ;} ;


 struct hostapd_hw_modes* stub1 (int ,int *,int *,int *) ;

struct hostapd_hw_modes *
hostapd_get_hw_feature_data(struct hostapd_data *hapd, u16 *num_modes,
       u16 *flags, u8 *dfs_domain)
{
 if (hapd->driver == ((void*)0) ||
     hapd->driver->get_hw_feature_data == ((void*)0))
  return ((void*)0);
 return hapd->driver->get_hw_feature_data(hapd->drv_priv, num_modes,
       flags, dfs_domain);
}
