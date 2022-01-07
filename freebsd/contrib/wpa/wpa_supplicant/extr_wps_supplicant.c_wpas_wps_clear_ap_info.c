
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ wps_ap_iter; scalar_t__ num_wps_ap; int * wps_ap; } ;


 int os_free (int *) ;

__attribute__((used)) static void wpas_wps_clear_ap_info(struct wpa_supplicant *wpa_s)
{
 os_free(wpa_s->wps_ap);
 wpa_s->wps_ap = ((void*)0);
 wpa_s->num_wps_ap = 0;
 wpa_s->wps_ap_iter = 0;
}
