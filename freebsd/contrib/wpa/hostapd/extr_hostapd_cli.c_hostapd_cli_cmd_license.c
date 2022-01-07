
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;


 char* cli_full_license ;
 char* hostapd_cli_version ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static int hostapd_cli_cmd_license(struct wpa_ctrl *ctrl, int argc,
       char *argv[])
{
 printf("%s\n\n%s\n", hostapd_cli_version, cli_full_license);
 return 0;
}
