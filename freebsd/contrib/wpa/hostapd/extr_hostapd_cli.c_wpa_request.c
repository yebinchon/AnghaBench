
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
struct hostapd_cli_cmd {char* cmd; int (* handler ) (struct wpa_ctrl*,int,char**) ;} ;


 struct hostapd_cli_cmd* hostapd_cli_commands ;
 scalar_t__ os_strcasecmp (char*,char*) ;
 int printf (char*,...) ;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,int ) ;
 int stub1 (struct wpa_ctrl*,int,char**) ;

__attribute__((used)) static void wpa_request(struct wpa_ctrl *ctrl, int argc, char *argv[])
{
 const struct hostapd_cli_cmd *cmd, *match = ((void*)0);
 int count;

 count = 0;
 cmd = hostapd_cli_commands;
 while (cmd->cmd) {
  if (strncasecmp(cmd->cmd, argv[0], strlen(argv[0])) == 0) {
   match = cmd;
   if (os_strcasecmp(cmd->cmd, argv[0]) == 0) {

    count = 1;
    break;
   }
   count++;
  }
  cmd++;
 }

 if (count > 1) {
  printf("Ambiguous command '%s'; possible commands:", argv[0]);
  cmd = hostapd_cli_commands;
  while (cmd->cmd) {
   if (strncasecmp(cmd->cmd, argv[0], strlen(argv[0])) ==
       0) {
    printf(" %s", cmd->cmd);
   }
   cmd++;
  }
  printf("\n");
 } else if (count == 0) {
  printf("Unknown command '%s'\n", argv[0]);
 } else {
  match->handler(ctrl, argc - 1, &argv[1]);
 }
}
