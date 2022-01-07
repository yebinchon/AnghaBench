
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * vendor_ext_m1; } ;
struct wps_context {TYPE_2__ dev; } ;
struct wpa_supplicant {TYPE_1__* conf; } ;
struct TYPE_3__ {scalar_t__ wps_vendor_ext_m1; } ;


 int MSG_ERROR ;
 int wpa_printf (int ,char*) ;
 int * wpabuf_dup (scalar_t__) ;
 int wpabuf_free (int *) ;

__attribute__((used)) static void wpas_wps_set_vendor_ext_m1(struct wpa_supplicant *wpa_s,
           struct wps_context *wps)
{
 wpabuf_free(wps->dev.vendor_ext_m1);
 wps->dev.vendor_ext_m1 = ((void*)0);

 if (wpa_s->conf->wps_vendor_ext_m1) {
  wps->dev.vendor_ext_m1 =
   wpabuf_dup(wpa_s->conf->wps_vendor_ext_m1);
  if (!wps->dev.vendor_ext_m1) {
   wpa_printf(MSG_ERROR, "WPS: Cannot "
       "allocate memory for vendor_ext_m1");
  }
 }
}
