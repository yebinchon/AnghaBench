
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wps_data {int auth_type; TYPE_1__* wps; } ;
struct TYPE_2__ {int auth_types; } ;


 int MSG_DEBUG ;
 int WPA_GET_BE16 (int const*) ;
 int WPS_AUTH_WPA2 ;
 int WPS_AUTH_WPA2PSK ;
 int WPS_AUTH_WPAPSK ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_process_auth_type_flags(struct wps_data *wps, const u8 *auth)
{
 u16 auth_types;

 if (auth == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Authentication Type flags "
      "received");
  return -1;
 }

 auth_types = WPA_GET_BE16(auth);

 wpa_printf(MSG_DEBUG, "WPS: Enrollee Authentication Type flags 0x%x",
     auth_types);
 wps->auth_type = wps->wps->auth_types & auth_types;
 if (wps->auth_type == 0) {
  wpa_printf(MSG_DEBUG, "WPS: No match in supported "
      "authentication types (own 0x%x Enrollee 0x%x)",
      wps->wps->auth_types, auth_types);
  return -1;

 }

 return 0;
}
