
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
typedef int cmd ;


 int printf (char*) ;
 int snprintf (char*,int,char*,char*) ;
 int wpa_ctrl_command (struct wpa_ctrl*,char*) ;

__attribute__((used)) static int hostapd_cli_cmd_level(struct wpa_ctrl *ctrl, int argc, char *argv[])
{
 char cmd[256];
 if (argc != 1) {
  printf("Invalid LEVEL command: needs one argument (debug "
         "level)\n");
  return 0;
 }
 snprintf(cmd, sizeof(cmd), "LEVEL %s", argv[0]);
 return wpa_ctrl_command(ctrl, cmd);
}
