
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_device_data {int * vendor_ext_m1; } ;
struct wpabuf {int dummy; } ;


 int ATTR_VENDOR_EXT ;
 int MSG_DEBUG ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpabuf_head_u8 (int *) ;
 int wpabuf_len (int *) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_buf (struct wpabuf*,int *) ;

int wps_build_vendor_ext_m1(struct wps_device_data *dev, struct wpabuf *msg)
{
 if (dev->vendor_ext_m1 != ((void*)0)) {
  wpa_hexdump(MSG_DEBUG, "WPS:  * Vendor Extension M1",
       wpabuf_head_u8(dev->vendor_ext_m1),
       wpabuf_len(dev->vendor_ext_m1));
  wpabuf_put_be16(msg, ATTR_VENDOR_EXT);
  wpabuf_put_be16(msg, wpabuf_len(dev->vendor_ext_m1));
  wpabuf_put_buf(msg, dev->vendor_ext_m1);
 }
 return 0;
}
