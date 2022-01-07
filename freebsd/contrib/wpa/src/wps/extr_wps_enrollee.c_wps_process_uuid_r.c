
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int uuid_r; } ;


 int MSG_DEBUG ;
 int WPS_UUID_LEN ;
 int os_memcpy (int ,int const*,int ) ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_process_uuid_r(struct wps_data *wps, const u8 *uuid_r)
{
 if (uuid_r == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No UUID-R received");
  return -1;
 }

 os_memcpy(wps->uuid_r, uuid_r, WPS_UUID_LEN);
 wpa_hexdump(MSG_DEBUG, "WPS: UUID-R", wps->uuid_r, WPS_UUID_LEN);

 return 0;
}
