
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_data {int uuid_r; } ;
struct wpabuf {int dummy; } ;


 int ATTR_UUID_R ;
 int MSG_DEBUG ;
 int WPS_UUID_LEN ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,int ,int ) ;

__attribute__((used)) static int wps_build_uuid_r(struct wps_data *wps, struct wpabuf *msg)
{
 wpa_printf(MSG_DEBUG, "WPS:  * UUID-R");
 wpabuf_put_be16(msg, ATTR_UUID_R);
 wpabuf_put_be16(msg, WPS_UUID_LEN);
 wpabuf_put_data(msg, wps->uuid_r, WPS_UUID_LEN);
 return 0;
}
