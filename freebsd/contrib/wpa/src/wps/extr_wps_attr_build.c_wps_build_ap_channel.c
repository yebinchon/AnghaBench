
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wpabuf {int dummy; } ;


 int ATTR_AP_CHANNEL ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;

int wps_build_ap_channel(struct wpabuf *msg, u16 ap_channel)
{
 wpa_printf(MSG_DEBUG, "WPS:  * AP Channel (%u)", ap_channel);
 wpabuf_put_be16(msg, ATTR_AP_CHANNEL);
 wpabuf_put_be16(msg, 2);
 wpabuf_put_be16(msg, ap_channel);
 return 0;
}
