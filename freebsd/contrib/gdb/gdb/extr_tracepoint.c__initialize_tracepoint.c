
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct memrange {int dummy; } ;
struct cmd_list_element {int dummy; } ;
struct agent_expr {int dummy; } ;
struct TYPE_4__ {int listsize; int aexpr_listsize; int * aexpr_list; int * list; } ;
struct TYPE_3__ {int listsize; int aexpr_listsize; int * aexpr_list; int * list; } ;
typedef int LONGEST ;


 int add_cmd (char*,int ,int *,char*,int *) ;
 struct cmd_list_element* add_com (char*,int ,int ,char*) ;
 int add_com_alias (char*,char*,int ,int) ;
 int add_info (char*,int ,char*) ;
 int add_info_alias (char*,char*,int) ;
 int add_prefix_cmd (char*,int ,int ,char*,int *,char*,int,int *) ;
 int builtin_type_int ;
 int class_alias ;
 int class_trace ;
 int cmdlist ;
 int collect_pseudocommand ;
 int * delete_trace_command ;
 int deletelist ;
 int * disable_trace_command ;
 int disablelist ;
 int * enable_trace_command ;
 int enablelist ;
 int end_actions_pseudocommand ;
 int filename_completer ;
 int location_completer ;
 int lookup_internalvar (char*) ;
 int scope_info ;
 int set_cmd_completer (struct cmd_list_element*,int ) ;
 int set_internalvar (int ,int ) ;
 TYPE_2__ stepping_list ;
 int tfindlist ;
 int trace_actions_command ;
 int trace_command ;
 int trace_dump_command ;
 int trace_find_command ;
 int * trace_find_end_command ;
 int * trace_find_line_command ;
 int * trace_find_none_command ;
 int * trace_find_outside_command ;
 int * trace_find_pc_command ;
 int * trace_find_range_command ;
 int * trace_find_start_command ;
 int * trace_find_tracepoint_command ;
 int trace_pass_command ;
 int trace_start_command ;
 int trace_status_command ;
 int trace_stop_command ;
 int traceframe_number ;
 scalar_t__ tracepoint_chain ;
 scalar_t__ tracepoint_count ;
 TYPE_1__ tracepoint_list ;
 int tracepoint_number ;
 int tracepoint_save_command ;
 int tracepoints_info ;
 int value_from_longest (int ,int ) ;
 int while_stepping_pseudocommand ;
 void* xmalloc (int) ;

void
_initialize_tracepoint (void)
{
  struct cmd_list_element *c;

  tracepoint_chain = 0;
  tracepoint_count = 0;
  traceframe_number = -1;
  tracepoint_number = -1;

  set_internalvar (lookup_internalvar ("tpnum"),
     value_from_longest (builtin_type_int, (LONGEST) 0));
  set_internalvar (lookup_internalvar ("trace_frame"),
     value_from_longest (builtin_type_int, (LONGEST) - 1));

  if (tracepoint_list.list == ((void*)0))
    {
      tracepoint_list.listsize = 128;
      tracepoint_list.list = xmalloc
 (tracepoint_list.listsize * sizeof (struct memrange));
    }
  if (tracepoint_list.aexpr_list == ((void*)0))
    {
      tracepoint_list.aexpr_listsize = 128;
      tracepoint_list.aexpr_list = xmalloc
 (tracepoint_list.aexpr_listsize * sizeof (struct agent_expr *));
    }

  if (stepping_list.list == ((void*)0))
    {
      stepping_list.listsize = 128;
      stepping_list.list = xmalloc
 (stepping_list.listsize * sizeof (struct memrange));
    }

  if (stepping_list.aexpr_list == ((void*)0))
    {
      stepping_list.aexpr_listsize = 128;
      stepping_list.aexpr_list = xmalloc
 (stepping_list.aexpr_listsize * sizeof (struct agent_expr *));
    }

  add_info ("scope", scope_info,
     "List the variables local to a scope");

  add_cmd ("tracepoints", class_trace, ((void*)0),
    "Tracing of program execution without stopping the program.",
    &cmdlist);

  add_info ("tracepoints", tracepoints_info,
     "Status of tracepoints, or tracepoint number NUMBER.\nConvenience variable \"$tpnum\" contains the number of the\nlast tracepoint set.");



  add_info_alias ("tp", "tracepoints", 1);

  c = add_com ("save-tracepoints", class_trace, tracepoint_save_command,
        "Save current tracepoint definitions as a script.\nUse the 'source' command in another debug session to restore them.");

  set_cmd_completer (c, filename_completer);

  add_com ("tdump", class_trace, trace_dump_command,
    "Print everything collected at the current tracepoint.");

  add_prefix_cmd ("tfind", class_trace, trace_find_command,
    "Select a trace frame;\nNo argument means forward by one frame; '-' meand backward by one frame.",

    &tfindlist, "tfind ", 1, &cmdlist);

  add_cmd ("outside", class_trace, trace_find_outside_command,
    "Select a trace frame whose PC is outside the given range.\nUsage: tfind outside addr1, addr2",

    &tfindlist);

  add_cmd ("range", class_trace, trace_find_range_command,
    "Select a trace frame whose PC is in the given range.\nUsage: tfind range addr1,addr2",

    &tfindlist);

  add_cmd ("line", class_trace, trace_find_line_command,
    "Select a trace frame by source line.\nArgument can be a line number (with optional source file), \na function name, or '*' followed by an address.\nDefault argument is 'the next source line that was traced'.",



    &tfindlist);

  add_cmd ("tracepoint", class_trace, trace_find_tracepoint_command,
    "Select a trace frame by tracepoint number.\nDefault is the tracepoint for the current trace frame.",

    &tfindlist);

  add_cmd ("pc", class_trace, trace_find_pc_command,
    "Select a trace frame by PC.\nDefault is the current PC, or the PC of the current trace frame.",

    &tfindlist);

  add_cmd ("end", class_trace, trace_find_end_command,
    "Synonym for 'none'.\nDe-select any trace frame and resume 'live' debugging.",

    &tfindlist);

  add_cmd ("none", class_trace, trace_find_none_command,
    "De-select any trace frame and resume 'live' debugging.",
    &tfindlist);

  add_cmd ("start", class_trace, trace_find_start_command,
    "Select the first trace frame in the trace buffer.",
    &tfindlist);

  add_com ("tstatus", class_trace, trace_status_command,
    "Display the status of the current trace data collection.");

  add_com ("tstop", class_trace, trace_stop_command,
    "Stop trace data collection.");

  add_com ("tstart", class_trace, trace_start_command,
    "Start trace data collection.");

  add_com ("passcount", class_trace, trace_pass_command,
    "Set the passcount for a tracepoint.\nThe trace will end when the tracepoint has been passed 'count' times.\nUsage: passcount COUNT TPNUM, where TPNUM may also be \"all\";\nif TPNUM is omitted, passcount refers to the last tracepoint defined.");




  add_com ("end", class_trace, end_actions_pseudocommand,
    "Ends a list of commands or actions.\nSeveral GDB commands allow you to enter a list of commands or actions.\nEntering \"end\" on a line by itself is the normal way to terminate\nsuch a list.\n\nNote: the \"end\" command cannot be used at the gdb prompt.");





  add_com ("while-stepping", class_trace, while_stepping_pseudocommand,
    "Specify single-stepping behavior at a tracepoint.\nArgument is number of instructions to trace in single-step mode\nfollowing the tracepoint.  This command is normally followed by\none or more \"collect\" commands, to specify what to collect\nwhile single-stepping.\n\nNote: this command can only be used in a tracepoint \"actions\" list.");






  add_com_alias ("ws", "while-stepping", class_alias, 0);
  add_com_alias ("stepping", "while-stepping", class_alias, 0);

  add_com ("collect", class_trace, collect_pseudocommand,
    "Specify one or more data items to be collected at a tracepoint.\nAccepts a comma-separated list of (one or more) expressions.  GDB will\ncollect all data (variables, registers) referenced by that expression.\nAlso accepts the following special arguments:\n    $regs   -- all registers.\n    $args   -- all function arguments.\n    $locals -- all variables local to the block/function scope.\nNote: this command can only be used in a tracepoint \"actions\" list.");
  add_com ("actions", class_trace, trace_actions_command,
    "Specify the actions to be taken at a tracepoint.\nTracepoint actions may include collecting of specified data, \nsingle-stepping, or enabling/disabling other tracepoints, \ndepending on target's capabilities.");




  add_cmd ("tracepoints", class_trace, delete_trace_command,
    "Delete specified tracepoints.\nArguments are tracepoint numbers, separated by spaces.\nNo argument means delete all tracepoints.",


    &deletelist);

  add_cmd ("tracepoints", class_trace, disable_trace_command,
    "Disable specified tracepoints.\nArguments are tracepoint numbers, separated by spaces.\nNo argument means disable all tracepoints.",


    &disablelist);

  add_cmd ("tracepoints", class_trace, enable_trace_command,
    "Enable specified tracepoints.\nArguments are tracepoint numbers, separated by spaces.\nNo argument means enable all tracepoints.",


    &enablelist);

  c = add_com ("trace", class_trace, trace_command,
        "Set a tracepoint at a specified line or function or address.\nArgument may be a line number, function name, or '*' plus an address.\nFor a line number or function, trace at the start of its code.\nIf an address is specified, trace at that exact address.\n\nDo \"help tracepoints\" for info on other tracepoint commands.");




  set_cmd_completer (c, location_completer);

  add_com_alias ("tp", "trace", class_alias, 0);
  add_com_alias ("tr", "trace", class_alias, 1);
  add_com_alias ("tra", "trace", class_alias, 1);
  add_com_alias ("trac", "trace", class_alias, 1);
}
