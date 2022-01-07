
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int action_file ;
 int ctrl_conn ;
 char* ctrl_ifname ;
 int hostapd_cli_attached ;
 int hostapd_cli_close_connection () ;
 int hostapd_cli_open_connection (char*) ;
 int interactive ;
 int os_free (char*) ;
 char* os_strdup (char const*) ;
 int printf (char*) ;
 int register_event_handler (int ) ;
 int update_stations (int ) ;
 scalar_t__ wpa_ctrl_attach (int ) ;

__attribute__((used)) static int hostapd_cli_reconnect(const char *ifname)
{
 char *next_ctrl_ifname;

 hostapd_cli_close_connection();

 if (!ifname)
  return -1;

 next_ctrl_ifname = os_strdup(ifname);
 os_free(ctrl_ifname);
 ctrl_ifname = next_ctrl_ifname;
 if (!ctrl_ifname)
  return -1;

 ctrl_conn = hostapd_cli_open_connection(ctrl_ifname);
 if (!ctrl_conn)
  return -1;
 if (!interactive && !action_file)
  return 0;
 if (wpa_ctrl_attach(ctrl_conn) == 0) {
  hostapd_cli_attached = 1;
  register_event_handler(ctrl_conn);
  update_stations(ctrl_conn);
 } else {
  printf("Warning: Failed to attach to hostapd.\n");
 }
 return 0;
}
