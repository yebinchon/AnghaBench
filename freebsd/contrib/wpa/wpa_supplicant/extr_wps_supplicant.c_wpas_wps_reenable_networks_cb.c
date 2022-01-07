
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int wpas_wps_reenable_networks (struct wpa_supplicant*) ;

__attribute__((used)) static void wpas_wps_reenable_networks_cb(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;

 wpas_wps_reenable_networks(wpa_s);
}
