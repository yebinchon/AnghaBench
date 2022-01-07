
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ctrl_conn ;
 scalar_t__ hostapd_cli_attached ;
 int unregister_event_handler (int *) ;
 int wpa_ctrl_close (int *) ;
 int wpa_ctrl_detach (int *) ;

__attribute__((used)) static void hostapd_cli_close_connection(void)
{
 if (ctrl_conn == ((void*)0))
  return;

 unregister_event_handler(ctrl_conn);
 if (hostapd_cli_attached) {
  wpa_ctrl_detach(ctrl_conn);
  hostapd_cli_attached = 0;
 }
 wpa_ctrl_close(ctrl_conn);
 ctrl_conn = ((void*)0);
}
