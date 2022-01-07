
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
typedef enum wpa_driver_if_type { ____Placeholder_wpa_driver_if_type } wpa_driver_if_type ;
struct TYPE_2__ {int (* if_add ) (int ,int,char const*,int const*,void*,int *,char*,int *,char const*,int ,int ) ;} ;


 int stub1 (int ,int,char const*,int const*,void*,int *,char*,int *,char const*,int ,int ) ;

__attribute__((used)) static inline int wpa_drv_if_add(struct wpa_supplicant *wpa_s,
     enum wpa_driver_if_type type,
     const char *ifname, const u8 *addr,
     void *bss_ctx, char *force_ifname,
     u8 *if_addr, const char *bridge)
{
 if (wpa_s->driver->if_add)
  return wpa_s->driver->if_add(wpa_s->drv_priv, type, ifname,
          addr, bss_ctx, ((void*)0), force_ifname,
          if_addr, bridge, 0, 0);
 return -1;
}
