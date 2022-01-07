
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_device_data {int os_version; } ;


 int MSG_DEBUG ;
 int WPA_GET_BE32 (int const*) ;
 int wpa_printf (int ,char*,...) ;

int wps_process_os_version(struct wps_device_data *dev, const u8 *ver)
{
 if (ver == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No OS Version received");
  return -1;
 }

 dev->os_version = WPA_GET_BE32(ver);
 wpa_printf(MSG_DEBUG, "WPS: OS Version %08x", dev->os_version);

 return 0;
}
