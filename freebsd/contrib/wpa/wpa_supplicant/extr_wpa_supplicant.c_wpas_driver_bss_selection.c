
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_flags; TYPE_1__* conf; } ;
struct TYPE_2__ {int ap_scan; } ;


 int WPA_DRIVER_FLAGS_BSS_SELECTION ;

int wpas_driver_bss_selection(struct wpa_supplicant *wpa_s)
{
 return wpa_s->conf->ap_scan == 2 ||
  (wpa_s->drv_flags & WPA_DRIVER_FLAGS_BSS_SELECTION);
}
