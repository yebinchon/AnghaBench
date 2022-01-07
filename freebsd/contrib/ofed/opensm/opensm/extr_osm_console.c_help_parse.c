
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int osm_opensm_t ;
struct TYPE_2__ {int (* help_function ) (int *,int) ;scalar_t__ name; } ;
typedef int FILE ;


 TYPE_1__* console_cmds ;
 int fprintf (int *,char*,char*) ;
 int help_command (int *,int ) ;
 char* next_token (char**) ;
 int strcmp (char*,scalar_t__) ;
 int stub1 (int *,int) ;

__attribute__((used)) static void help_parse(char **p_last, osm_opensm_t * p_osm, FILE * out)
{
 char *p_cmd;
 int i, found = 0;

 p_cmd = next_token(p_last);
 if (!p_cmd)
  help_command(out, 0);
 else {
  for (i = 1; console_cmds[i].name; i++) {
   if (!strcmp(p_cmd, console_cmds[i].name)) {
    found = 1;
    console_cmds[i].help_function(out, 1);
    break;
   }
  }
  if (!found) {
   fprintf(out, "%s : Command not found\n\n", p_cmd);
   help_command(out, 0);
  }
 }
}
