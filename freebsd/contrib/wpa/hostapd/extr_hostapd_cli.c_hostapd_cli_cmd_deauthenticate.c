
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
typedef int buf ;


 int os_snprintf (char*,int,char*,char*,...) ;
 int printf (char*) ;
 int wpa_ctrl_command (struct wpa_ctrl*,char*) ;

__attribute__((used)) static int hostapd_cli_cmd_deauthenticate(struct wpa_ctrl *ctrl, int argc,
       char *argv[])
{
 char buf[64];
 if (argc < 1) {
  printf("Invalid 'deauthenticate' command - exactly one "
         "argument, STA address, is required.\n");
  return -1;
 }
 if (argc > 1)
  os_snprintf(buf, sizeof(buf), "DEAUTHENTICATE %s %s",
       argv[0], argv[1]);
 else
  os_snprintf(buf, sizeof(buf), "DEAUTHENTICATE %s", argv[0]);
 return wpa_ctrl_command(ctrl, buf);
}
