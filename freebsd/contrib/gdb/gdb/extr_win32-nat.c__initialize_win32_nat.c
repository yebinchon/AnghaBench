
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int add_cmd (char*,int ,int ,char*,int *) ;
 struct cmd_list_element* add_com (char*,int ,int ,char*) ;
 int add_com_alias (char*,char*,int ,int) ;
 int add_info (char*,int ,char*) ;
 int add_info_alias (char*,char*,int) ;
 int add_prefix_cmd (char*,int ,int ,char*,int *,char*,int ,int *) ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int add_target (int *) ;
 int child_ops ;
 int class_alias ;
 int class_files ;
 int class_info ;
 int class_support ;
 int debug_events ;
 int debug_exceptions ;
 int debug_exec ;
 int debug_memory ;
 int display_selectors ;
 int dll_symbol_command ;
 int filename_completer ;
 int info_dll_command ;
 int info_w32_cmdlist ;
 int info_w32_command ;
 int infolist ;
 int init_child_ops () ;
 int new_console ;
 int new_group ;
 int set_cmd_completer (struct cmd_list_element*,int ) ;
 int setlist ;
 int showlist ;
 int useshell ;
 int var_boolean ;

void
_initialize_win32_nat (void)
{
  struct cmd_list_element *c;

  init_child_ops ();

  c = add_com ("dll-symbols", class_files, dll_symbol_command,
        "Load dll library symbols from FILE.");
  set_cmd_completer (c, filename_completer);

  add_com_alias ("sharedlibrary", "dll-symbols", class_alias, 1);

  add_show_from_set (add_set_cmd ("shell", class_support, var_boolean,
      (char *) &useshell,
   "Set use of shell to start subprocess.",
      &setlist),
       &showlist);

  add_show_from_set (add_set_cmd ("new-console", class_support, var_boolean,
      (char *) &new_console,
   "Set creation of new console when creating child process.",
      &setlist),
       &showlist);

  add_show_from_set (add_set_cmd ("new-group", class_support, var_boolean,
      (char *) &new_group,
     "Set creation of new group when creating child process.",
      &setlist),
       &showlist);

  add_show_from_set (add_set_cmd ("debugexec", class_support, var_boolean,
      (char *) &debug_exec,
         "Set whether to display execution in child process.",
      &setlist),
       &showlist);

  add_show_from_set (add_set_cmd ("debugevents", class_support, var_boolean,
      (char *) &debug_events,
     "Set whether to display kernel events in child process.",
      &setlist),
       &showlist);

  add_show_from_set (add_set_cmd ("debugmemory", class_support, var_boolean,
      (char *) &debug_memory,
   "Set whether to display memory accesses in child process.",
      &setlist),
       &showlist);

  add_show_from_set (add_set_cmd ("debugexceptions", class_support, var_boolean,
      (char *) &debug_exceptions,
        "Set whether to display kernel exceptions in child process.",
      &setlist),
       &showlist);

  add_info ("dll", info_dll_command, "Status of loaded DLLs.");
  add_info_alias ("sharedlibrary", "dll", 1);

  add_prefix_cmd ("w32", class_info, info_w32_command,
    "Print information specific to Win32 debugging.",
    &info_w32_cmdlist, "info w32 ", 0, &infolist);

  add_cmd ("selector", class_info, display_selectors,
    "Display selectors infos.",
    &info_w32_cmdlist);

  add_target (&child_ops);
}
