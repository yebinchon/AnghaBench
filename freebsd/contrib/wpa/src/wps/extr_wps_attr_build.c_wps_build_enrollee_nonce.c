
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_data {int nonce_e; } ;
struct wpabuf {int dummy; } ;


 int ATTR_ENROLLEE_NONCE ;
 int MSG_DEBUG ;
 int WPS_NONCE_LEN ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,int ,int ) ;

int wps_build_enrollee_nonce(struct wps_data *wps, struct wpabuf *msg)
{
 wpa_printf(MSG_DEBUG, "WPS:  * Enrollee Nonce");
 wpabuf_put_be16(msg, ATTR_ENROLLEE_NONCE);
 wpabuf_put_be16(msg, WPS_NONCE_LEN);
 wpabuf_put_data(msg, wps->nonce_e, WPS_NONCE_LEN);
 return 0;
}
