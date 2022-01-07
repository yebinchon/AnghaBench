
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_context {int ap_setup_locked; } ;
struct wpabuf {int dummy; } ;


 int ATTR_AP_SETUP_LOCKED ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static int wps_build_ap_setup_locked(struct wps_context *wps,
         struct wpabuf *msg)
{
 if (wps->ap_setup_locked && wps->ap_setup_locked != 2) {
  wpa_printf(MSG_DEBUG, "WPS:  * AP Setup Locked");
  wpabuf_put_be16(msg, ATTR_AP_SETUP_LOCKED);
  wpabuf_put_be16(msg, 1);
  wpabuf_put_u8(msg, 1);
 }
 return 0;
}
