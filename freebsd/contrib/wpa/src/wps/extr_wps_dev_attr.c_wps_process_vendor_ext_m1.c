
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_device_data {int multi_ap_ext; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int ) ;

void wps_process_vendor_ext_m1(struct wps_device_data *dev, const u8 ext)
{
 dev->multi_ap_ext = ext;
 wpa_printf(MSG_DEBUG, "WPS: Multi-AP extension value %02x",
     dev->multi_ap_ext);
}
