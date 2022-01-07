
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {char* doc; } ;


 scalar_t__ info_verbose ;
 struct cmd_list_element* lookup_cmd_1 (char**,int ,int *,int) ;
 int showlist ;

void
set_verbose (char *args, int from_tty, struct cmd_list_element *c)
{
  char *cmdname = "verbose";
  struct cmd_list_element *showcmd;

  showcmd = lookup_cmd_1 (&cmdname, showlist, ((void*)0), 1);

  if (info_verbose)
    {
      c->doc = "Set verbose printing of informational messages.";
      showcmd->doc = "Show verbose printing of informational messages.";
    }
  else
    {
      c->doc = "Set verbosity.";
      showcmd->doc = "Show verbosity.";
    }
}
