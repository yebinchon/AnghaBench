
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int add_cmd (char*,int ,int ,char*,struct cmd_list_element**) ;
 int no_class ;
 int set_system_call_allowed ;
 int show_system_call_allowed ;

void
initialize_remote_fileio (struct cmd_list_element *remote_set_cmdlist,
     struct cmd_list_element *remote_show_cmdlist)
{
  add_cmd ("system-call-allowed", no_class,
    set_system_call_allowed,
    "Set if the host system(3) call is allowed for the target.\n",
    &remote_set_cmdlist);
  add_cmd ("system-call-allowed", no_class,
    show_system_call_allowed,
    "Show if the host system(3) call is allowed for the target.\n",
    &remote_show_cmdlist);
}
