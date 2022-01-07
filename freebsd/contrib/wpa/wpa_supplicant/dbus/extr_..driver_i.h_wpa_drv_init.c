
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* driver; int global_drv_priv; } ;
struct TYPE_2__ {void* (* init2 ) (struct wpa_supplicant*,char const*,int ) ;void* (* init ) (struct wpa_supplicant*,char const*) ;} ;


 void* stub1 (struct wpa_supplicant*,char const*,int ) ;
 void* stub2 (struct wpa_supplicant*,char const*) ;

__attribute__((used)) static inline void * wpa_drv_init(struct wpa_supplicant *wpa_s,
      const char *ifname)
{
 if (wpa_s->driver->init2)
  return wpa_s->driver->init2(wpa_s, ifname,
         wpa_s->global_drv_priv);
 if (wpa_s->driver->init) {
  return wpa_s->driver->init(wpa_s, ifname);
 }
 return ((void*)0);
}
