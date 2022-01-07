
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int ATTR_VERSION ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;
 int wpabuf_tailroom (struct wpabuf*) ;

int wps_build_version(struct wpabuf *msg)
{





 if (wpabuf_tailroom(msg) < 5)
  return -1;
 wpa_printf(MSG_DEBUG, "WPS:  * Version (hardcoded 0x10)");
 wpabuf_put_be16(msg, ATTR_VERSION);
 wpabuf_put_be16(msg, 1);
 wpabuf_put_u8(msg, 0x10);
 return 0;
}
