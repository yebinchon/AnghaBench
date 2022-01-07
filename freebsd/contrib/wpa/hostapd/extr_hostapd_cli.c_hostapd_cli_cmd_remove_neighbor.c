
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
typedef int cmd ;


 int os_snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int printf (char*) ;
 int wpa_ctrl_command (struct wpa_ctrl*,char*) ;

__attribute__((used)) static int hostapd_cli_cmd_remove_neighbor(struct wpa_ctrl *ctrl, int argc,
        char *argv[])
{
 char cmd[400];
 int res;

 if (argc != 2) {
  printf("Invalid remove_neighbor command: needs 2 arguments\n");
  return -1;
 }

 res = os_snprintf(cmd, sizeof(cmd), "REMOVE_NEIGHBOR %s %s",
     argv[0], argv[1]);
 if (os_snprintf_error(sizeof(cmd), res)) {
  printf("Too long REMOVE_NEIGHBOR command.\n");
  return -1;
 }
 return wpa_ctrl_command(ctrl, cmd);
}
