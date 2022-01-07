
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ** vendor_ext; } ;
struct wps_context {TYPE_2__ dev; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_3__ {int ** wps_vendor_ext; } ;


 int MAX_WPS_VENDOR_EXTENSIONS ;
 int * wpabuf_dup (int *) ;
 int wpabuf_free (int *) ;

__attribute__((used)) static int hostapd_wps_set_vendor_ext(struct hostapd_data *hapd,
          struct wps_context *wps)
{
 int i;

 for (i = 0; i < MAX_WPS_VENDOR_EXTENSIONS; i++) {
  wpabuf_free(wps->dev.vendor_ext[i]);
  wps->dev.vendor_ext[i] = ((void*)0);

  if (hapd->conf->wps_vendor_ext[i] == ((void*)0))
   continue;

  wps->dev.vendor_ext[i] =
   wpabuf_dup(hapd->conf->wps_vendor_ext[i]);
  if (wps->dev.vendor_ext[i] == ((void*)0)) {
   while (--i >= 0)
    wpabuf_free(wps->dev.vendor_ext[i]);
   return -1;
  }
 }

 return 0;
}
