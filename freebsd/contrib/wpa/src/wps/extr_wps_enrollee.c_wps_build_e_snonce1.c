
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_data {int snonce; } ;
struct wpabuf {int dummy; } ;


 int ATTR_E_SNONCE1 ;
 int MSG_DEBUG ;
 int WPS_SECRET_NONCE_LEN ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,int ,int ) ;

__attribute__((used)) static int wps_build_e_snonce1(struct wps_data *wps, struct wpabuf *msg)
{
 wpa_printf(MSG_DEBUG, "WPS:  * E-SNonce1");
 wpabuf_put_be16(msg, ATTR_E_SNONCE1);
 wpabuf_put_be16(msg, WPS_SECRET_NONCE_LEN);
 wpabuf_put_data(msg, wps->snonce, WPS_SECRET_NONCE_LEN);
 return 0;
}
