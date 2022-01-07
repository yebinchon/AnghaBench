
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
typedef int buf ;


 int os_snprintf (char*,int,char*,char*) ;
 int wpa_ctrl_command (struct wpa_ctrl*,char*) ;

__attribute__((used)) static int hostapd_cli_cmd_mib(struct wpa_ctrl *ctrl, int argc, char *argv[])
{
 if (argc > 0) {
  char buf[100];
  os_snprintf(buf, sizeof(buf), "MIB %s", argv[0]);
  return wpa_ctrl_command(ctrl, buf);
 }
 return wpa_ctrl_command(ctrl, "MIB");
}
