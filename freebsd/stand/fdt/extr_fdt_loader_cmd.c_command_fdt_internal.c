
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int (* cmdf_t ) (int,char**) ;
struct TYPE_2__ {int (* handler ) (int,char**) ;int flags; int * name; } ;


 int CMD_ERROR ;
 int CMD_REQUIRES_BLOB ;
 char* command_errmsg ;
 TYPE_1__* commands ;
 scalar_t__ fdt_fixup () ;
 scalar_t__ strcmp (char*,int *) ;
 int stub1 (int,char**) ;

int
command_fdt_internal(int argc, char *argv[])
{
 cmdf_t *cmdh;
 int flags;
 int i, err;

 if (argc < 2) {
  command_errmsg = "usage is 'fdt <command> [<args>]";
  return (CMD_ERROR);
 }




 i = 0;
 cmdh = ((void*)0);
 while (!(commands[i].name == ((void*)0))) {
  if (strcmp(argv[1], commands[i].name) == 0) {

   cmdh = commands[i].handler;
   flags = commands[i].flags;
   break;
  }
  i++;
 }
 if (cmdh == ((void*)0)) {
  command_errmsg = "unknown command";
  return (CMD_ERROR);
 }

 if (flags & CMD_REQUIRES_BLOB) {



  if (fdt_fixup() == 0)
   return (CMD_ERROR);
 }




 err = (*cmdh)(argc, argv);

 return (err);
}
