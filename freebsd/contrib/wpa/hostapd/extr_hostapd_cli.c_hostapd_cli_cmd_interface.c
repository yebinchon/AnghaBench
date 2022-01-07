
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;


 char* ctrl_ifname ;
 int hostapd_cli_list_interfaces (struct wpa_ctrl*) ;
 scalar_t__ hostapd_cli_reconnect (char*) ;
 int printf (char*,char*) ;

__attribute__((used)) static int hostapd_cli_cmd_interface(struct wpa_ctrl *ctrl, int argc,
         char *argv[])
{
 if (argc < 1) {
  hostapd_cli_list_interfaces(ctrl);
  return 0;
 }
 if (hostapd_cli_reconnect(argv[0]) != 0) {
  printf("Could not connect to interface '%s' - re-trying\n",
   ctrl_ifname);
 }
 return 0;
}
