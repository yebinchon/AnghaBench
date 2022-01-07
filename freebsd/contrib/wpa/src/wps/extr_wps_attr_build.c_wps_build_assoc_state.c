
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_data {int dummy; } ;
struct wpabuf {int dummy; } ;


 int ATTR_ASSOC_STATE ;
 int MSG_DEBUG ;
 int WPS_ASSOC_NOT_ASSOC ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;

int wps_build_assoc_state(struct wps_data *wps, struct wpabuf *msg)
{
 wpa_printf(MSG_DEBUG, "WPS:  * Association State");
 wpabuf_put_be16(msg, ATTR_ASSOC_STATE);
 wpabuf_put_be16(msg, 2);
 wpabuf_put_be16(msg, WPS_ASSOC_NOT_ASSOC);
 return 0;
}
