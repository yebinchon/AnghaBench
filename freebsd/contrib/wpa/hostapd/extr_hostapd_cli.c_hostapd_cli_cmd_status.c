
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;


 scalar_t__ os_strcmp (char*,char*) ;
 int wpa_ctrl_command (struct wpa_ctrl*,char*) ;

__attribute__((used)) static int hostapd_cli_cmd_status(struct wpa_ctrl *ctrl, int argc, char *argv[])
{
 if (argc > 0 && os_strcmp(argv[0], "driver") == 0)
  return wpa_ctrl_command(ctrl, "STATUS-DRIVER");
 return wpa_ctrl_command(ctrl, "STATUS");
}
