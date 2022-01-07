
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* help; int (* func ) (int,char**) ;scalar_t__ name; } ;
struct TYPE_7__ {int name; } ;
typedef TYPE_2__ SL_cmd ;


 int fprintf (int ,char*,...) ;
 int sl_help (TYPE_2__*,int,char**) ;
 TYPE_2__* sl_match (TYPE_2__*,char*,int ) ;
 int stderr ;
 int stub1 (int,char**) ;

void
sl_slc_help (SL_cmd *cmds, int argc, char **argv)
{
    if(argc == 0) {
 sl_help(cmds, 1, argv - 1 );
    } else {
 SL_cmd *c = sl_match (cmds, argv[0], 0);
  if(c == ((void*)0)) {
     fprintf (stderr, "No such command: %s. "
       "Try \"help\" for a list of commands\n",
       argv[0]);
 } else {
     if(c->func) {
  static char help[] = "--help";
  char *fake[3];
  fake[0] = argv[0];
  fake[1] = help;
  fake[2] = ((void*)0);
  (*c->func)(2, fake);
  fprintf(stderr, "\n");
     }
     if(c->help && *c->help)
  fprintf (stderr, "%s\n", c->help);
     if((++c)->name && c->func == ((void*)0)) {
  int f = 0;
  fprintf (stderr, "Synonyms:");
  while (c->name && c->func == ((void*)0)) {
      fprintf (stderr, "%s%s", f ? ", " : " ", (c++)->name);
      f = 1;
  }
  fprintf (stderr, "\n");
     }
 }
    }
}
