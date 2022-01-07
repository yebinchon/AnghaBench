
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_credential {int auth_type; } ;
struct wpabuf {int dummy; } ;


 int ATTR_AUTH_TYPE ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;

__attribute__((used)) static int wps_build_cred_auth_type(struct wpabuf *msg,
        const struct wps_credential *cred)
{
 wpa_printf(MSG_DEBUG, "WPS:  * Authentication Type (0x%x)",
     cred->auth_type);
 wpabuf_put_be16(msg, ATTR_AUTH_TYPE);
 wpabuf_put_be16(msg, 2);
 wpabuf_put_be16(msg, cred->auth_type);
 return 0;
}
