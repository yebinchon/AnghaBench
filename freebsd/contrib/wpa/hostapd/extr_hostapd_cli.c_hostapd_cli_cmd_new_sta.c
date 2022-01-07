
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
typedef int buf ;


 int printf (char*) ;
 int snprintf (char*,int,char*,char*) ;
 int wpa_ctrl_command (struct wpa_ctrl*,char*) ;

__attribute__((used)) static int hostapd_cli_cmd_new_sta(struct wpa_ctrl *ctrl, int argc,
       char *argv[])
{
 char buf[64];
 if (argc != 1) {
  printf("Invalid 'new_sta' command - exactly one argument, STA "
         "address, is required.\n");
  return -1;
 }
 snprintf(buf, sizeof(buf), "NEW_STA %s", argv[0]);
 return wpa_ctrl_command(ctrl, buf);
}
