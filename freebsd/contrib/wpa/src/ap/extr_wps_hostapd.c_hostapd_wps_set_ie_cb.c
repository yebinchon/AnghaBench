
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct hostapd_data {scalar_t__ beacon_set_done; struct wpabuf* wps_probe_resp_ie; struct wpabuf* wps_beacon_ie; } ;


 int hostapd_set_ap_wps_ie (struct hostapd_data*) ;
 int ieee802_11_set_beacon (struct hostapd_data*) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static int hostapd_wps_set_ie_cb(void *ctx, struct wpabuf *beacon_ie,
     struct wpabuf *probe_resp_ie)
{
 struct hostapd_data *hapd = ctx;
 wpabuf_free(hapd->wps_beacon_ie);
 hapd->wps_beacon_ie = beacon_ie;
 wpabuf_free(hapd->wps_probe_resp_ie);
 hapd->wps_probe_resp_ie = probe_resp_ie;
 if (hapd->beacon_set_done)
  ieee802_11_set_beacon(hapd);
 return hostapd_set_ap_wps_ie(hapd);
}
