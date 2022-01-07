
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_supp_port ) (int ,int) ;} ;


 int stub1 (int ,int) ;

__attribute__((used)) static inline int wpa_drv_set_supp_port(struct wpa_supplicant *wpa_s,
     int authorized)
{
 if (wpa_s->driver->set_supp_port) {
  return wpa_s->driver->set_supp_port(wpa_s->drv_priv,
          authorized);
 }
 return 0;
}
