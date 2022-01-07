
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_data {int dummy; } ;
struct wpabuf {int dummy; } ;


 int ATTR_CONN_TYPE_FLAGS ;
 int MSG_DEBUG ;
 int WPS_CONN_ESS ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

int wps_build_conn_type_flags(struct wps_data *wps, struct wpabuf *msg)
{
 wpa_printf(MSG_DEBUG, "WPS:  * Connection Type Flags");
 wpabuf_put_be16(msg, ATTR_CONN_TYPE_FLAGS);
 wpabuf_put_be16(msg, 1);
 wpabuf_put_u8(msg, WPS_CONN_ESS);
 return 0;
}
