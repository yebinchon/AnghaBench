
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_context {int wps_state; } ;
struct wpabuf {int dummy; } ;


 int ATTR_WPS_STATE ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int ) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static int wps_build_wps_state(struct wps_context *wps, struct wpabuf *msg)
{
 wpa_printf(MSG_DEBUG, "WPS:  * Wi-Fi Protected Setup State (%d)",
     wps->wps_state);
 wpabuf_put_be16(msg, ATTR_WPS_STATE);
 wpabuf_put_be16(msg, 1);
 wpabuf_put_u8(msg, wps->wps_state);
 return 0;
}
