
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * vendor_ext; } ;
struct wps_context {int dh_privkey; int dh_pubkey; struct wps_context* network_key; TYPE_1__ dev; } ;


 int MAX_WPS_VENDOR_EXTENSIONS ;
 int hostapd_wps_nfc_clear (struct wps_context*) ;
 int os_free (struct wps_context*) ;
 int wpabuf_free (int ) ;
 int wps_device_data_free (TYPE_1__*) ;

__attribute__((used)) static void hostapd_free_wps(struct wps_context *wps)
{
 int i;

 for (i = 0; i < MAX_WPS_VENDOR_EXTENSIONS; i++)
  wpabuf_free(wps->dev.vendor_ext[i]);
 wps_device_data_free(&wps->dev);
 os_free(wps->network_key);
 hostapd_wps_nfc_clear(wps);
 wpabuf_free(wps->dh_pubkey);
 wpabuf_free(wps->dh_privkey);
 os_free(wps);
}
