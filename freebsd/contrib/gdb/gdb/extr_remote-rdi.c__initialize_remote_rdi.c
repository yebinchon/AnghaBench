
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int Adp_SetLogEnable (int ) ;
 int Adp_SetLogfile (int ) ;
 struct cmd_list_element* add_cmd (char*,int ,int ,char*,int *) ;
 int add_setshow_boolean_cmd (char*,int ,int *,char*,char*,int *,int *,int *,int *) ;
 int add_target (int *) ;
 int arm_rdi_ops ;
 int class_maintenance ;
 int filename_completer ;
 int init_rdi_ops () ;
 int log_enable ;
 int log_filename ;
 int maintenancelist ;
 int no_class ;
 int rdi_heartbeat ;
 int rdilogenable_command ;
 int rdilogfile_command ;
 int rom_at_zero ;
 int set_cmd_completer (struct cmd_list_element*,int ) ;
 int setlist ;
 int showlist ;
 int xstrdup (char*) ;

void
_initialize_remote_rdi (void)
{
  struct cmd_list_element *c;

  init_rdi_ops ();
  add_target (&arm_rdi_ops);

  log_filename = xstrdup ("rdi.log");
  Adp_SetLogfile (log_filename);
  Adp_SetLogEnable (log_enable);

  c = add_cmd ("rdilogfile", class_maintenance,
        rdilogfile_command,
        "Set filename for ADP packet log.\n"
        "This file is used to log Angel Debugger Protocol packets.\n"
        "With a single argument, sets the logfile name to that value.\n"
        "Without an argument, shows the current logfile name.\n"
        "See also: rdilogenable\n",
        &maintenancelist);
  set_cmd_completer (c, filename_completer);

  add_cmd ("rdilogenable", class_maintenance,
    rdilogenable_command,
    "Set enable logging of ADP packets.\n"
    "This will log ADP packets exchanged between gdb and the\n"
    "rdi target device.\n"
    "An argument of 1, t, true, y or yes will enable.\n"
    "An argument of 0, f, false, n or no will disabled.\n"
    "Withough an argument, it will display current state.\n",
    &maintenancelist);

  add_setshow_boolean_cmd
    ("rdiromatzero", no_class, &rom_at_zero,
     "Set target has ROM at addr 0.\n"
     "A true value disables vector catching, false enables vector catching.\n"
     "This is evaluated at the time the 'target rdi' command is executed\n",
     "Show if target has ROM at addr 0.\n",
     ((void*)0), ((void*)0),
     &setlist, &showlist);

  add_setshow_boolean_cmd
    ("rdiheartbeat", no_class, &rdi_heartbeat,
     "Set enable for ADP heartbeat packets.\n"
     "I don't know why you would want this. If you enable them,\n"
     "it will confuse ARM and EPI JTAG interface boxes as well\n"
     "as the Angel Monitor.\n",
     "Show enable for ADP heartbeat packets.\n",
     ((void*)0), ((void*)0),
     &setlist, &showlist);
}
