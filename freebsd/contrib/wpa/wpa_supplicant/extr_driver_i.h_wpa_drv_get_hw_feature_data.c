
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct hostapd_hw_modes {int dummy; } ;
struct TYPE_2__ {struct hostapd_hw_modes* (* get_hw_feature_data ) (int ,int *,int *,int *) ;} ;


 struct hostapd_hw_modes* stub1 (int ,int *,int *,int *) ;

__attribute__((used)) static inline struct hostapd_hw_modes *
wpa_drv_get_hw_feature_data(struct wpa_supplicant *wpa_s, u16 *num_modes,
       u16 *flags, u8 *dfs_domain)
{
 if (wpa_s->driver->get_hw_feature_data)
  return wpa_s->driver->get_hw_feature_data(wpa_s->drv_priv,
         num_modes, flags,
         dfs_domain);
 return ((void*)0);
}
