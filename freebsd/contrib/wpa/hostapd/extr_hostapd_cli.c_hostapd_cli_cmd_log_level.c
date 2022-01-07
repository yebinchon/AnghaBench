
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
typedef int cmd ;


 int os_snprintf (char*,int,char*,char*,char*,char*,char*) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int printf (char*) ;
 int wpa_ctrl_command (struct wpa_ctrl*,char*) ;

__attribute__((used)) static int hostapd_cli_cmd_log_level(struct wpa_ctrl *ctrl, int argc,
         char *argv[])
{
 char cmd[256];
 int res;

 res = os_snprintf(cmd, sizeof(cmd), "LOG_LEVEL%s%s%s%s",
     argc >= 1 ? " " : "",
     argc >= 1 ? argv[0] : "",
     argc == 2 ? " " : "",
     argc == 2 ? argv[1] : "");
 if (os_snprintf_error(sizeof(cmd), res)) {
  printf("Too long option\n");
  return -1;
 }
 return wpa_ctrl_command(ctrl, cmd);
}
