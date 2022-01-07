
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int uuid_e; } ;


 int MSG_DEBUG ;
 int WPS_UUID_LEN ;
 int os_memcpy (int ,int const*,int ) ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_process_uuid_e(struct wps_data *wps, const u8 *uuid_e)
{
 if (uuid_e == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No UUID-E received");
  return -1;
 }

 os_memcpy(wps->uuid_e, uuid_e, WPS_UUID_LEN);
 wpa_hexdump(MSG_DEBUG, "WPS: UUID-E", wps->uuid_e, WPS_UUID_LEN);

 return 0;
}
