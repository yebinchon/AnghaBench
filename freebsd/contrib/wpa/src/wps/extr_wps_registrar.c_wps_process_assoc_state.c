
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wps_data {int dummy; } ;


 int MSG_DEBUG ;
 int WPA_GET_BE16 (int const*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_process_assoc_state(struct wps_data *wps, const u8 *assoc)
{
 u16 a;

 if (assoc == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Association State received");
  return -1;
 }

 a = WPA_GET_BE16(assoc);
 wpa_printf(MSG_DEBUG, "WPS: Enrollee Association State %d", a);

 return 0;
}
