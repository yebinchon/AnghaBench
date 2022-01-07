
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;


 int wpa_ctrl_command (struct wpa_ctrl*,char*) ;

__attribute__((used)) static int hostapd_cli_cmd_pmksa(struct wpa_ctrl *ctrl, int argc, char *argv[])
{
 return wpa_ctrl_command(ctrl, "PMKSA");
}
