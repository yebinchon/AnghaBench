
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

__attribute__((used)) static int hostapd_cli_cmd_set(struct wpa_ctrl *ctrl, int argc, char *argv[])
{
 char cmd[2048];
 int res;

 if (argc != 2) {
  printf("Invalid SET command: needs two arguments (variable "
         "name and value)\n");
  return -1;
 }

 res = os_snprintf(cmd, sizeof(cmd), "SET %s %s", argv[0], argv[1]);
 if (os_snprintf_error(sizeof(cmd), res)) {
  printf("Too long SET command.\n");
  return -1;
 }
 return wpa_ctrl_command(ctrl, cmd);
}
