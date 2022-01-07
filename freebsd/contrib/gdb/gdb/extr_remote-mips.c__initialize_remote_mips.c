
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* to_longname; int to_has_all_memory; int to_has_memory; int to_has_stack; int to_has_registers; int to_has_execution; char* to_shortname; char* to_doc; void* to_wait; int to_open; int to_magic; int to_stratum; int to_mourn_inferior; int to_create_inferior; int to_load; int to_kill; int to_can_use_hw_breakpoint; int to_stopped_by_watchpoint; int to_remove_watchpoint; int to_insert_watchpoint; int to_remove_breakpoint; int to_insert_breakpoint; int to_files_info; int to_xfer_memory; int to_prepare_to_store; int to_store_registers; int to_fetch_registers; int to_resume; int to_detach; int to_close; } ;


 int OPS_MAGIC ;
 int add_com (char*,int ,int ,char*) ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int add_target (TYPE_1__*) ;
 int class_obscure ;
 int ddb_open ;
 TYPE_1__ ddb_ops ;
 int lsi_open ;
 TYPE_1__ lsi_ops ;
 char mask_address_p ;
 int mips_can_use_watchpoint ;
 int mips_close ;
 int mips_create_inferior ;
 int mips_detach ;
 int mips_fetch_registers ;
 int mips_files_info ;
 int mips_insert_breakpoint ;
 int mips_insert_watchpoint ;
 int mips_kill ;
 int mips_load ;
 int mips_monitor_prompt ;
 int mips_mourn_inferior ;
 int mips_open ;
 TYPE_1__ mips_ops ;
 int mips_prepare_to_store ;
 int mips_receive_wait ;
 int mips_remove_breakpoint ;
 int mips_remove_watchpoint ;
 int mips_resume ;
 int mips_retransmit_wait ;
 int mips_stopped_by_watchpoint ;
 int mips_store_registers ;
 int mips_syn_garbage ;
 void* mips_wait ;
 int mips_xfer_memory ;
 int monitor_warnings ;
 int no_class ;
 int pmon_command ;
 int pmon_open ;
 TYPE_1__ pmon_ops ;
 int process_stratum ;
 int setlist ;
 int showlist ;
 int var_boolean ;
 int var_string ;
 int var_zinteger ;

void
_initialize_remote_mips (void)
{

  mips_ops.to_longname = "Remote MIPS debugging over serial line";
  mips_ops.to_close = mips_close;
  mips_ops.to_detach = mips_detach;
  mips_ops.to_resume = mips_resume;
  mips_ops.to_fetch_registers = mips_fetch_registers;
  mips_ops.to_store_registers = mips_store_registers;
  mips_ops.to_prepare_to_store = mips_prepare_to_store;
  mips_ops.to_xfer_memory = mips_xfer_memory;
  mips_ops.to_files_info = mips_files_info;
  mips_ops.to_insert_breakpoint = mips_insert_breakpoint;
  mips_ops.to_remove_breakpoint = mips_remove_breakpoint;
  mips_ops.to_insert_watchpoint = mips_insert_watchpoint;
  mips_ops.to_remove_watchpoint = mips_remove_watchpoint;
  mips_ops.to_stopped_by_watchpoint = mips_stopped_by_watchpoint;
  mips_ops.to_can_use_hw_breakpoint = mips_can_use_watchpoint;
  mips_ops.to_kill = mips_kill;
  mips_ops.to_load = mips_load;
  mips_ops.to_create_inferior = mips_create_inferior;
  mips_ops.to_mourn_inferior = mips_mourn_inferior;
  mips_ops.to_stratum = process_stratum;
  mips_ops.to_has_all_memory = 1;
  mips_ops.to_has_memory = 1;
  mips_ops.to_has_stack = 1;
  mips_ops.to_has_registers = 1;
  mips_ops.to_has_execution = 1;
  mips_ops.to_magic = OPS_MAGIC;


  pmon_ops = ddb_ops = lsi_ops = mips_ops;


  mips_ops.to_shortname = "mips";
  mips_ops.to_doc = "Debug a board using the MIPS remote debugging protocol over a serial line.\nThe argument is the device it is connected to or, if it contains a colon,\nHOST:PORT to access a board over a network";



  mips_ops.to_open = mips_open;
  mips_ops.to_wait = mips_wait;

  pmon_ops.to_shortname = "pmon";
  pmon_ops.to_doc = "Debug a board using the PMON MIPS remote debugging protocol over a serial\nline. The argument is the device it is connected to or, if it contains a\ncolon, HOST:PORT to access a board over a network";



  pmon_ops.to_open = pmon_open;
  pmon_ops.to_wait = mips_wait;

  ddb_ops.to_shortname = "ddb";
  ddb_ops.to_doc = "Debug a board using the PMON MIPS remote debugging protocol over a serial\nline. The first argument is the device it is connected to or, if it contains\na colon, HOST:PORT to access a board over a network.  The optional second\nparameter is the temporary file in the form HOST:FILENAME to be used for\nTFTP downloads to the board.  The optional third parameter is the local name\nof the TFTP temporary file, if it differs from the filename seen by the board.";






  ddb_ops.to_open = ddb_open;
  ddb_ops.to_wait = mips_wait;

  lsi_ops.to_shortname = "lsi";
  lsi_ops.to_doc = pmon_ops.to_doc;
  lsi_ops.to_open = lsi_open;
  lsi_ops.to_wait = mips_wait;


  add_target (&mips_ops);
  add_target (&pmon_ops);
  add_target (&ddb_ops);
  add_target (&lsi_ops);

  add_show_from_set (
        add_set_cmd ("timeout", no_class, var_zinteger,
       (char *) &mips_receive_wait,
         "Set timeout in seconds for remote MIPS serial I/O.",
       &setlist),
        &showlist);

  add_show_from_set (
    add_set_cmd ("retransmit-timeout", no_class, var_zinteger,
          (char *) &mips_retransmit_wait,
          "Set retransmit timeout in seconds for remote MIPS serial I/O.\nThis is the number of seconds to wait for an acknowledgement to a packet\nbefore resending the packet.", &setlist),


        &showlist);

  add_show_from_set (
     add_set_cmd ("syn-garbage-limit", no_class, var_zinteger,
    (char *) &mips_syn_garbage,
    "Set the maximum number of characters to ignore when scanning for a SYN.\nThis is the maximum number of characters GDB will ignore when trying to\nsynchronize with the remote system.  A value of -1 means that there is no limit\n(Note that these characters are printed out even though they are ignored.)",



    &setlist),
        &showlist);

  add_show_from_set
    (add_set_cmd ("monitor-prompt", class_obscure, var_string,
    (char *) &mips_monitor_prompt,
    "Set the prompt that GDB expects from the monitor.",
    &setlist),
     &showlist);

  add_show_from_set (
        add_set_cmd ("monitor-warnings", class_obscure, var_zinteger,
       (char *) &monitor_warnings,
       "Set printing of monitor warnings.\n"
  "When enabled, monitor warnings about hardware breakpoints "
       "will be displayed.",
       &setlist),
        &showlist);

  add_com ("pmon <command>", class_obscure, pmon_command,
    "Send a packet to PMON (must be in debug mode).");

  add_show_from_set (add_set_cmd ("mask-address", no_class,
      var_boolean, &mask_address_p,
      "Set zeroing of upper 32 bits of 64-bit addresses when talking to PMON targets.\nUse \"on\" to enable the masking and \"off\" to disable it.\n",

      &setlist),
       &showlist);
}
