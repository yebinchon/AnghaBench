
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_cli_cmd {char* usage; int cmd; } ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;

__attribute__((used)) static void print_cmd_help(FILE *stream, const struct hostapd_cli_cmd *cmd,
      const char *pad)
{
 char c;
 size_t n;

 if (cmd->usage == ((void*)0))
  return;
 fprintf(stream, "%s%s ", pad, cmd->cmd);
 for (n = 0; (c = cmd->usage[n]); n++) {
  fprintf(stream, "%c", c);
  if (c == '\n')
   fprintf(stream, "%s", pad);
 }
 fprintf(stream, "\n");
}
