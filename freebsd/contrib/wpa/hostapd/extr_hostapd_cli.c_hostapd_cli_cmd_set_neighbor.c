
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
typedef int cmd ;


 int os_snprintf (char*,int,char*,char*,char*,char*,char*,char*,char*) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int printf (char*) ;
 int wpa_ctrl_command (struct wpa_ctrl*,char*) ;

__attribute__((used)) static int hostapd_cli_cmd_set_neighbor(struct wpa_ctrl *ctrl, int argc,
     char *argv[])
{
 char cmd[2048];
 int res;

 if (argc < 3 || argc > 6) {
  printf("Invalid set_neighbor command: needs 3-6 arguments\n");
  return -1;
 }

 res = os_snprintf(cmd, sizeof(cmd), "SET_NEIGHBOR %s %s %s %s %s %s",
     argv[0], argv[1], argv[2], argc >= 4 ? argv[3] : "",
     argc >= 5 ? argv[4] : "", argc == 6 ? argv[5] : "");
 if (os_snprintf_error(sizeof(cmd), res)) {
  printf("Too long SET_NEIGHBOR command.\n");
  return -1;
 }
 return wpa_ctrl_command(ctrl, cmd);
}
