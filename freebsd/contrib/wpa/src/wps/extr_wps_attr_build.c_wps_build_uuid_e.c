
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 scalar_t__ ATTR_UUID_E ;
 int MSG_DEBUG ;
 scalar_t__ WPS_UUID_LEN ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,scalar_t__) ;
 int wpabuf_put_data (struct wpabuf*,int const*,scalar_t__) ;
 scalar_t__ wpabuf_tailroom (struct wpabuf*) ;

int wps_build_uuid_e(struct wpabuf *msg, const u8 *uuid)
{
 if (wpabuf_tailroom(msg) < 4 + WPS_UUID_LEN)
  return -1;
 wpa_printf(MSG_DEBUG, "WPS:  * UUID-E");
 wpabuf_put_be16(msg, ATTR_UUID_E);
 wpabuf_put_be16(msg, WPS_UUID_LEN);
 wpabuf_put_data(msg, uuid, WPS_UUID_LEN);
 return 0;
}
