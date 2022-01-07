
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_process_conn_type_flags(struct wps_data *wps, const u8 *conn)
{
 if (conn == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Connection Type flags "
      "received");
  return -1;
 }

 wpa_printf(MSG_DEBUG, "WPS: Enrollee Connection Type flags 0x%x",
     *conn);

 return 0;
}
