
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cmd; } ;
typedef int FILE ;


 int fprintf (int *,char*) ;
 TYPE_1__* hostapd_cli_commands ;
 int print_cmd_help (int *,TYPE_1__*,char*) ;
 scalar_t__ str_starts (scalar_t__,char const*) ;

__attribute__((used)) static void print_help(FILE *stream, const char *cmd)
{
 int n;

 fprintf(stream, "commands:\n");
 for (n = 0; hostapd_cli_commands[n].cmd; n++) {
  if (cmd == ((void*)0) || str_starts(hostapd_cli_commands[n].cmd, cmd))
   print_cmd_help(stream, &hostapd_cli_commands[n], "  ");
 }
}
