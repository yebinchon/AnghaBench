
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* status ) (int ,char*,size_t) ;} ;


 int stub1 (int ,char*,size_t) ;

__attribute__((used)) static inline int wpa_drv_status(struct wpa_supplicant *wpa_s,
     char *buf, size_t buflen)
{
 if (!wpa_s->driver->status)
  return -1;
 return wpa_s->driver->status(wpa_s->drv_priv, buf, buflen);
}
