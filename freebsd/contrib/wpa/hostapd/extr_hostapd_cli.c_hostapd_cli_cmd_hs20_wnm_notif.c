
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
typedef int buf ;


 int os_snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int printf (char*) ;
 int wpa_ctrl_command (struct wpa_ctrl*,char*) ;

__attribute__((used)) static int hostapd_cli_cmd_hs20_wnm_notif(struct wpa_ctrl *ctrl, int argc,
       char *argv[])
{
 char buf[300];
 int res;

 if (argc < 2) {
  printf("Invalid 'hs20_wnm_notif' command - two arguments (STA "
         "addr and URL) are needed\n");
  return -1;
 }

 res = os_snprintf(buf, sizeof(buf), "HS20_WNM_NOTIF %s %s",
     argv[0], argv[1]);
 if (os_snprintf_error(sizeof(buf), res))
  return -1;
 return wpa_ctrl_command(ctrl, buf);
}
