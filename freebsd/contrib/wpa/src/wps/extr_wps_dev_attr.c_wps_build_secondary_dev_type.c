
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_device_data {int num_sec_dev_types; int sec_dev_type; } ;
struct wpabuf {int dummy; } ;


 int ATTR_SECONDARY_DEV_TYPE_LIST ;
 int MSG_DEBUG ;
 int WPS_DEV_TYPE_LEN ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_data (struct wpabuf*,int ,int) ;

int wps_build_secondary_dev_type(struct wps_device_data *dev,
      struct wpabuf *msg)
{
 if (!dev->num_sec_dev_types)
  return 0;

 wpa_printf(MSG_DEBUG, "WPS:  * Secondary Device Type");
 wpabuf_put_be16(msg, ATTR_SECONDARY_DEV_TYPE_LIST);
 wpabuf_put_be16(msg, WPS_DEV_TYPE_LEN * dev->num_sec_dev_types);
 wpabuf_put_data(msg, dev->sec_dev_type,
   WPS_DEV_TYPE_LEN * dev->num_sec_dev_types);

 return 0;
}
