
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int extended_capa_len; int extended_capa_mask; int extended_capa; int drv_priv; TYPE_1__* driver; } ;
typedef enum wpa_driver_if_type { ____Placeholder_wpa_driver_if_type } wpa_driver_if_type ;
struct TYPE_2__ {int (* get_ext_capab ) (int ,int,int *,int *,int *) ;} ;


 int stub1 (int ,int,int *,int *,int *) ;

__attribute__((used)) static inline int wpa_drv_get_ext_capa(struct wpa_supplicant *wpa_s,
           enum wpa_driver_if_type type)
{
 if (!wpa_s->driver->get_ext_capab)
  return -1;
 return wpa_s->driver->get_ext_capab(wpa_s->drv_priv, type,
         &wpa_s->extended_capa,
         &wpa_s->extended_capa_mask,
         &wpa_s->extended_capa_len);
}
