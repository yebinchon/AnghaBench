
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* mlme_setprotection ) (int ,int const*,int,int) ;} ;


 int stub1 (int ,int const*,int,int) ;

__attribute__((used)) static inline int wpa_drv_mlme_setprotection(struct wpa_supplicant *wpa_s,
          const u8 *addr, int protect_type,
          int key_type)
{
 if (wpa_s->driver->mlme_setprotection)
  return wpa_s->driver->mlme_setprotection(wpa_s->drv_priv, addr,
        protect_type,
        key_type);
 return 0;
}
