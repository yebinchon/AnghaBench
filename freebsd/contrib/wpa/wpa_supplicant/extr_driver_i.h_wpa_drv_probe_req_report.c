
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* probe_req_report ) (int ,int) ;} ;


 int stub1 (int ,int) ;

__attribute__((used)) static inline int wpa_drv_probe_req_report(struct wpa_supplicant *wpa_s,
        int report)
{
 if (wpa_s->driver->probe_req_report)
  return wpa_s->driver->probe_req_report(wpa_s->drv_priv,
             report);
 return -1;
}
