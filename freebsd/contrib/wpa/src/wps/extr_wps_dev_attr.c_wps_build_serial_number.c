
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_device_data {scalar_t__ serial_number; } ;
struct wpabuf {int dummy; } ;


 size_t ATTR_SERIAL_NUMBER ;
 int MSG_DEBUG ;
 size_t os_strlen (scalar_t__) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,size_t) ;
 int wpabuf_put_data (struct wpabuf*,scalar_t__,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,char) ;

int wps_build_serial_number(struct wps_device_data *dev, struct wpabuf *msg)
{
 size_t len;
 wpa_printf(MSG_DEBUG, "WPS:  * Serial Number");
 wpabuf_put_be16(msg, ATTR_SERIAL_NUMBER);
 len = dev->serial_number ? os_strlen(dev->serial_number) : 0;

 if (len == 0) {





  wpabuf_put_be16(msg, 1);
  wpabuf_put_u8(msg, ' ');
  return 0;
 }

 wpabuf_put_be16(msg, len);
 wpabuf_put_data(msg, dev->serial_number, len);
 return 0;
}
