
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
typedef enum wps_response_type { ____Placeholder_wps_response_type } wps_response_type ;


 int ATTR_RESPONSE_TYPE ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

int wps_build_resp_type(struct wpabuf *msg, enum wps_response_type type)
{
 wpa_printf(MSG_DEBUG, "WPS:  * Response Type (%d)", type);
 wpabuf_put_be16(msg, ATTR_RESPONSE_TYPE);
 wpabuf_put_be16(msg, 1);
 wpabuf_put_u8(msg, type);
 return 0;
}
