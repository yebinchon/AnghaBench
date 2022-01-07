
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char** (* completion ) (char const*,int) ;char* usage; scalar_t__ cmd; } ;


 int edit_clear_line () ;
 int edit_redraw () ;
 TYPE_1__* hostapd_cli_commands ;
 scalar_t__ os_strcasecmp (scalar_t__,char const*) ;
 int printf (char*,char*) ;
 char** stub1 (char const*,int) ;

__attribute__((used)) static char ** hostapd_cli_cmd_completion(const char *cmd, const char *str,
          int pos)
{
 int i;

 for (i = 0; hostapd_cli_commands[i].cmd; i++) {
  if (os_strcasecmp(hostapd_cli_commands[i].cmd, cmd) != 0)
   continue;
  if (hostapd_cli_commands[i].completion)
   return hostapd_cli_commands[i].completion(str, pos);
  if (!hostapd_cli_commands[i].usage)
   return ((void*)0);
  edit_clear_line();
  printf("\r%s\n", hostapd_cli_commands[i].usage);
  edit_redraw();
  break;
 }

 return ((void*)0);
}
