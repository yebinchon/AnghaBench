
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* update_ft_ies ) (int ,int const*,int const*,size_t) ;} ;


 int stub1 (int ,int const*,int const*,size_t) ;

__attribute__((used)) static inline int wpa_drv_update_ft_ies(struct wpa_supplicant *wpa_s,
     const u8 *md,
     const u8 *ies, size_t ies_len)
{
 if (wpa_s->driver->update_ft_ies)
  return wpa_s->driver->update_ft_ies(wpa_s->drv_priv, md,
          ies, ies_len);
 return -1;
}
