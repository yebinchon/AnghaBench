
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wps_data {TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int ap_settings_len; scalar_t__ ap_settings; } ;


 int MSG_DEBUG ;
 int wpa_hexdump_key (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*) ;
 int * wpabuf_put (struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,scalar_t__,int ) ;
 scalar_t__ wps_build_cred_auth_type (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_cred_encr_type (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_cred_mac_addr (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_cred_network_key (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_cred_ssid (struct wps_data*,struct wpabuf*) ;

__attribute__((used)) static int wps_build_ap_settings(struct wps_data *wps, struct wpabuf *plain)
{
 const u8 *start, *end;
 int ret;

 if (wps->wps->ap_settings) {
  wpa_printf(MSG_DEBUG, "WPS:  * AP Settings (pre-configured)");
  wpabuf_put_data(plain, wps->wps->ap_settings,
    wps->wps->ap_settings_len);
  return 0;
 }

 wpa_printf(MSG_DEBUG, "WPS:  * AP Settings based on current configuration");
 start = wpabuf_put(plain, 0);
 ret = wps_build_cred_ssid(wps, plain) ||
  wps_build_cred_mac_addr(wps, plain) ||
  wps_build_cred_auth_type(wps, plain) ||
  wps_build_cred_encr_type(wps, plain) ||
  wps_build_cred_network_key(wps, plain);
 end = wpabuf_put(plain, 0);

 wpa_hexdump_key(MSG_DEBUG, "WPS: Plaintext AP Settings",
   start, end - start);

 return ret;
}
