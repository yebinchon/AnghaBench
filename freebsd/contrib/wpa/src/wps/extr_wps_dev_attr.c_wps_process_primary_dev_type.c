
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_device_data {int pri_dev_type; } ;
typedef int devtype ;


 int MSG_DEBUG ;
 int WPS_DEV_TYPE_BUFSIZE ;
 int WPS_DEV_TYPE_LEN ;
 int os_memcpy (int ,int const*,int ) ;
 int wpa_printf (int ,char*,...) ;
 int wps_dev_type_bin2str (int ,char*,int) ;

__attribute__((used)) static int wps_process_primary_dev_type(struct wps_device_data *dev,
     const u8 *dev_type)
{

 char devtype[WPS_DEV_TYPE_BUFSIZE];


 if (dev_type == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Primary Device Type received");
  return -1;
 }

 os_memcpy(dev->pri_dev_type, dev_type, WPS_DEV_TYPE_LEN);
 wpa_printf(MSG_DEBUG, "WPS: Primary Device Type: %s",
     wps_dev_type_bin2str(dev->pri_dev_type, devtype,
     sizeof(devtype)));

 return 0;
}
