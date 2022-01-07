
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;


 int print_help (int ,char*) ;
 int stdout ;

__attribute__((used)) static int hostapd_cli_cmd_help(struct wpa_ctrl *ctrl, int argc, char *argv[])
{
 print_help(stdout, argc > 0 ? argv[0] : ((void*)0));
 return 0;
}
