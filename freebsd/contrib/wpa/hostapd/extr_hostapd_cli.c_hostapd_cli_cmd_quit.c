
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;


 int eloop_terminate () ;
 int hostapd_cli_quit ;
 scalar_t__ interactive ;

__attribute__((used)) static int hostapd_cli_cmd_quit(struct wpa_ctrl *ctrl, int argc, char *argv[])
{
 hostapd_cli_quit = 1;
 if (interactive)
  eloop_terminate();
 return 0;
}
