
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
typedef enum wpa_driver_if_type { ____Placeholder_wpa_driver_if_type } wpa_driver_if_type ;
struct TYPE_2__ {int (* if_add ) (int ,int,char const*,int const*,void*,void**,char*,int *,char const*,int,int) ;} ;


 int stub1 (int ,int,char const*,int const*,void*,void**,char*,int *,char const*,int,int) ;

int hostapd_if_add(struct hostapd_data *hapd, enum wpa_driver_if_type type,
     const char *ifname, const u8 *addr, void *bss_ctx,
     void **drv_priv, char *force_ifname, u8 *if_addr,
     const char *bridge, int use_existing)
{
 if (hapd->driver == ((void*)0) || hapd->driver->if_add == ((void*)0))
  return -1;
 return hapd->driver->if_add(hapd->drv_priv, type, ifname, addr,
        bss_ctx, drv_priv, force_ifname, if_addr,
        bridge, use_existing, 1);
}
