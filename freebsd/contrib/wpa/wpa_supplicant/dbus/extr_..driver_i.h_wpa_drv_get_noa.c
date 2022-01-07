
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* get_noa ) (int ,int *,size_t) ;} ;


 int stub1 (int ,int *,size_t) ;

__attribute__((used)) static inline int wpa_drv_get_noa(struct wpa_supplicant *wpa_s,
      u8 *buf, size_t buf_len)
{
 if (!wpa_s->driver->get_noa)
  return -1;
 return wpa_s->driver->get_noa(wpa_s->drv_priv, buf, buf_len);
}
