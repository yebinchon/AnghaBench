
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_com (char*,int ,int ,char*) ;
 int add_prefix_cmd (char*,int ,int ,char*,int *,char*,int ,int *) ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_set_enum_cmd (char*,int ,int ,int *,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int class_maintenance ;
 int class_obscure ;
 int connect_command ;
 int global_serial_debug_p ;
 int logbase_enums ;
 int no_class ;
 int serial_logbase ;
 int serial_logfile ;
 int serial_set_cmd ;
 int serial_set_cmdlist ;
 int serial_show_cmd ;
 int serial_show_cmdlist ;
 int setdebuglist ;
 int setlist ;
 int showdebuglist ;
 int showlist ;
 int var_filename ;
 int var_zinteger ;

void
_initialize_serial (void)
{






  add_prefix_cmd ("serial", class_maintenance, serial_set_cmd, "Set default serial/parallel port configuration.",

    &serial_set_cmdlist, "set serial ",
    0 ,
    &setlist);

  add_prefix_cmd ("serial", class_maintenance, serial_show_cmd, "Show default serial/parallel port configuration.",

    &serial_show_cmdlist, "show serial ",
    0 ,
    &showlist);

  add_show_from_set
    (add_set_cmd ("remotelogfile", no_class,
    var_filename, (char *) &serial_logfile,
    "Set filename for remote session recording.\nThis file is used to record the remote session for future playback\nby gdbserver.",


    &setlist),
     &showlist);

  add_show_from_set
    (add_set_enum_cmd ("remotelogbase", no_class,
         logbase_enums, &serial_logbase,
         "Set numerical base for remote session logging",
         &setlist),
     &showlist);

  add_show_from_set (add_set_cmd ("serial",
      class_maintenance,
      var_zinteger,
      (char *)&global_serial_debug_p,
      "Set serial debugging.\nWhen non-zero, serial port debugging is enabled.", &setdebuglist),

       &showdebuglist);
}
