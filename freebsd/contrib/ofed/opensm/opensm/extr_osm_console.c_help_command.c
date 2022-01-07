
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* help_function ) (int *,int ) ;scalar_t__ name; } ;
typedef int FILE ;


 TYPE_1__* console_cmds ;
 int fprintf (int *,char*) ;
 int stub1 (int *,int ) ;

__attribute__((used)) static void help_command(FILE * out, int detail)
{
 int i;

 fprintf(out, "Supported commands and syntax:\n");
 fprintf(out, "help [<command>]\n");

 for (i = 1; console_cmds[i].name; i++)
  console_cmds[i].help_function(out, 0);
}
