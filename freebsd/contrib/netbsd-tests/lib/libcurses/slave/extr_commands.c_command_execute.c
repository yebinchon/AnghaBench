
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* func ) (int,char**) ;int name; } ;


 TYPE_1__* commands ;
 size_t ncmds ;
 int report_status (char*) ;
 scalar_t__ strcasecmp (char*,int ) ;
 int stub1 (int,char**) ;

void
command_execute(char *func, int nargs, char **args)
{
 size_t i;

 i = 0;
 while (i < ncmds) {
  if (strcasecmp(func, commands[i].name) == 0) {

   commands[i].func(nargs, args);
   return;
  }
  i++;
 }

 report_status("UNKNOWN_FUNCTION");
}
