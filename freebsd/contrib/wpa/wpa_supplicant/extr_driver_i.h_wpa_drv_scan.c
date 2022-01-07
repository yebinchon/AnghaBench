
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ test_failure; int drv_priv; TYPE_1__* driver; } ;
struct wpa_driver_scan_params {int dummy; } ;
struct TYPE_2__ {int (* scan2 ) (int ,struct wpa_driver_scan_params*) ;} ;


 int EBUSY ;
 scalar_t__ WPAS_TEST_FAILURE_SCAN_TRIGGER ;
 int stub1 (int ,struct wpa_driver_scan_params*) ;

__attribute__((used)) static inline int wpa_drv_scan(struct wpa_supplicant *wpa_s,
          struct wpa_driver_scan_params *params)
{




 if (wpa_s->driver->scan2)
  return wpa_s->driver->scan2(wpa_s->drv_priv, params);
 return -1;
}
