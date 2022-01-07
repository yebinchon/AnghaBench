
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {scalar_t__ drv_priv; int * wps_probe_resp_ie; int * wps_beacon_ie; } ;


 int hostapd_reset_ap_wps_ie (struct hostapd_data*) ;
 int hostapd_set_ap_wps_ie (struct hostapd_data*) ;
 int wpabuf_free (int *) ;

__attribute__((used)) static void hostapd_wps_clear_ies(struct hostapd_data *hapd, int deinit_only)
{
 wpabuf_free(hapd->wps_beacon_ie);
 hapd->wps_beacon_ie = ((void*)0);

 wpabuf_free(hapd->wps_probe_resp_ie);
 hapd->wps_probe_resp_ie = ((void*)0);

 if (deinit_only) {
  if (hapd->drv_priv)
   hostapd_reset_ap_wps_ie(hapd);
  return;
 }

 hostapd_set_ap_wps_ie(hapd);
}
