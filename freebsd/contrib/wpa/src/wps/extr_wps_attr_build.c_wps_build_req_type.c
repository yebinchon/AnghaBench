
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
typedef enum wps_request_type { ____Placeholder_wps_request_type } wps_request_type ;


 int ATTR_REQUEST_TYPE ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

int wps_build_req_type(struct wpabuf *msg, enum wps_request_type type)
{
 wpa_printf(MSG_DEBUG, "WPS:  * Request Type");
 wpabuf_put_be16(msg, ATTR_REQUEST_TYPE);
 wpabuf_put_be16(msg, 1);
 wpabuf_put_u8(msg, type);
 return 0;
}
