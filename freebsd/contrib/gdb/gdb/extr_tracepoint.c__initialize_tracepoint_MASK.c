#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct memrange {int dummy; } ;
struct cmd_list_element {int dummy; } ;
struct agent_expr {int dummy; } ;
struct TYPE_4__ {int listsize; int aexpr_listsize; int /*<<< orphan*/ * aexpr_list; int /*<<< orphan*/ * list; } ;
struct TYPE_3__ {int listsize; int aexpr_listsize; int /*<<< orphan*/ * aexpr_list; int /*<<< orphan*/ * list; } ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 struct cmd_list_element* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  builtin_type_int ; 
 int /*<<< orphan*/  class_alias ; 
 int /*<<< orphan*/  class_trace ; 
 int /*<<< orphan*/  cmdlist ; 
 int /*<<< orphan*/  collect_pseudocommand ; 
 int /*<<< orphan*/ * delete_trace_command ; 
 int /*<<< orphan*/  deletelist ; 
 int /*<<< orphan*/ * disable_trace_command ; 
 int /*<<< orphan*/  disablelist ; 
 int /*<<< orphan*/ * enable_trace_command ; 
 int /*<<< orphan*/  enablelist ; 
 int /*<<< orphan*/  end_actions_pseudocommand ; 
 int /*<<< orphan*/  filename_completer ; 
 int /*<<< orphan*/  location_completer ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  scope_info ; 
 int /*<<< orphan*/  FUNC7 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ stepping_list ; 
 int /*<<< orphan*/  tfindlist ; 
 int /*<<< orphan*/  trace_actions_command ; 
 int /*<<< orphan*/  trace_command ; 
 int /*<<< orphan*/  trace_dump_command ; 
 int /*<<< orphan*/  trace_find_command ; 
 int /*<<< orphan*/ * trace_find_end_command ; 
 int /*<<< orphan*/ * trace_find_line_command ; 
 int /*<<< orphan*/ * trace_find_none_command ; 
 int /*<<< orphan*/ * trace_find_outside_command ; 
 int /*<<< orphan*/ * trace_find_pc_command ; 
 int /*<<< orphan*/ * trace_find_range_command ; 
 int /*<<< orphan*/ * trace_find_start_command ; 
 int /*<<< orphan*/ * trace_find_tracepoint_command ; 
 int /*<<< orphan*/  trace_pass_command ; 
 int /*<<< orphan*/  trace_start_command ; 
 int /*<<< orphan*/  trace_status_command ; 
 int /*<<< orphan*/  trace_stop_command ; 
 int traceframe_number ; 
 scalar_t__ tracepoint_chain ; 
 scalar_t__ tracepoint_count ; 
 TYPE_1__ tracepoint_list ; 
 int tracepoint_number ; 
 int /*<<< orphan*/  tracepoint_save_command ; 
 int /*<<< orphan*/  tracepoints_info ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  while_stepping_pseudocommand ; 
 void* FUNC10 (int) ; 

void
FUNC11 (void)
{
  struct cmd_list_element *c;

  tracepoint_chain = 0;
  tracepoint_count = 0;
  traceframe_number = -1;
  tracepoint_number = -1;

  FUNC8 (FUNC6 ("tpnum"),
		   FUNC9 (builtin_type_int, (LONGEST) 0));
  FUNC8 (FUNC6 ("trace_frame"),
		   FUNC9 (builtin_type_int, (LONGEST) - 1));

  if (tracepoint_list.list == NULL)
    {
      tracepoint_list.listsize = 128;
      tracepoint_list.list = FUNC10
	(tracepoint_list.listsize * sizeof (struct memrange));
    }
  if (tracepoint_list.aexpr_list == NULL)
    {
      tracepoint_list.aexpr_listsize = 128;
      tracepoint_list.aexpr_list = FUNC10
	(tracepoint_list.aexpr_listsize * sizeof (struct agent_expr *));
    }

  if (stepping_list.list == NULL)
    {
      stepping_list.listsize = 128;
      stepping_list.list = FUNC10
	(stepping_list.listsize * sizeof (struct memrange));
    }

  if (stepping_list.aexpr_list == NULL)
    {
      stepping_list.aexpr_listsize = 128;
      stepping_list.aexpr_list = FUNC10
	(stepping_list.aexpr_listsize * sizeof (struct agent_expr *));
    }

  FUNC3 ("scope", scope_info,
	    "List the variables local to a scope");

  FUNC0 ("tracepoints", class_trace, NULL,
	   "Tracing of program execution without stopping the program.",
	   &cmdlist);

  FUNC3 ("tracepoints", tracepoints_info,
	    "Status of tracepoints, or tracepoint number NUMBER.\n\
Convenience variable \"$tpnum\" contains the number of the\n\
last tracepoint set.");

  FUNC4 ("tp", "tracepoints", 1);

  c = FUNC1 ("save-tracepoints", class_trace, tracepoint_save_command,
	       "Save current tracepoint definitions as a script.\n\
Use the 'source' command in another debug session to restore them.");
  FUNC7 (c, filename_completer);

  FUNC1 ("tdump", class_trace, trace_dump_command,
	   "Print everything collected at the current tracepoint.");

  FUNC5 ("tfind", class_trace, trace_find_command,
		  "Select a trace frame;\n\
No argument means forward by one frame; '-' meand backward by one frame.",
		  &tfindlist, "tfind ", 1, &cmdlist);

  FUNC0 ("outside", class_trace, trace_find_outside_command,
	   "Select a trace frame whose PC is outside the given \
range.\nUsage: tfind outside addr1, addr2",
	   &tfindlist);

  FUNC0 ("range", class_trace, trace_find_range_command,
	   "Select a trace frame whose PC is in the given range.\n\
Usage: tfind range addr1,addr2",
	   &tfindlist);

  FUNC0 ("line", class_trace, trace_find_line_command,
	   "Select a trace frame by source line.\n\
Argument can be a line number (with optional source file), \n\
a function name, or '*' followed by an address.\n\
Default argument is 'the next source line that was traced'.",
	   &tfindlist);

  FUNC0 ("tracepoint", class_trace, trace_find_tracepoint_command,
	   "Select a trace frame by tracepoint number.\n\
Default is the tracepoint for the current trace frame.",
	   &tfindlist);

  FUNC0 ("pc", class_trace, trace_find_pc_command,
	   "Select a trace frame by PC.\n\
Default is the current PC, or the PC of the current trace frame.",
	   &tfindlist);

  FUNC0 ("end", class_trace, trace_find_end_command,
	   "Synonym for 'none'.\n\
De-select any trace frame and resume 'live' debugging.",
	   &tfindlist);

  FUNC0 ("none", class_trace, trace_find_none_command,
	   "De-select any trace frame and resume 'live' debugging.",
	   &tfindlist);

  FUNC0 ("start", class_trace, trace_find_start_command,
	   "Select the first trace frame in the trace buffer.",
	   &tfindlist);

  FUNC1 ("tstatus", class_trace, trace_status_command,
	   "Display the status of the current trace data collection.");

  FUNC1 ("tstop", class_trace, trace_stop_command,
	   "Stop trace data collection.");

  FUNC1 ("tstart", class_trace, trace_start_command,
	   "Start trace data collection.");

  FUNC1 ("passcount", class_trace, trace_pass_command,
	   "Set the passcount for a tracepoint.\n\
The trace will end when the tracepoint has been passed 'count' times.\n\
Usage: passcount COUNT TPNUM, where TPNUM may also be \"all\";\n\
if TPNUM is omitted, passcount refers to the last tracepoint defined.");

  FUNC1 ("end", class_trace, end_actions_pseudocommand,
	   "Ends a list of commands or actions.\n\
Several GDB commands allow you to enter a list of commands or actions.\n\
Entering \"end\" on a line by itself is the normal way to terminate\n\
such a list.\n\n\
Note: the \"end\" command cannot be used at the gdb prompt.");

  FUNC1 ("while-stepping", class_trace, while_stepping_pseudocommand,
	   "Specify single-stepping behavior at a tracepoint.\n\
Argument is number of instructions to trace in single-step mode\n\
following the tracepoint.  This command is normally followed by\n\
one or more \"collect\" commands, to specify what to collect\n\
while single-stepping.\n\n\
Note: this command can only be used in a tracepoint \"actions\" list.");

  FUNC2 ("ws", "while-stepping", class_alias, 0);
  FUNC2 ("stepping", "while-stepping", class_alias, 0);

  FUNC1 ("collect", class_trace, collect_pseudocommand,
	   "Specify one or more data items to be collected at a tracepoint.\n\
Accepts a comma-separated list of (one or more) expressions.  GDB will\n\
collect all data (variables, registers) referenced by that expression.\n\
Also accepts the following special arguments:\n\
    $regs   -- all registers.\n\
    $args   -- all function arguments.\n\
    $locals -- all variables local to the block/function scope.\n\
Note: this command can only be used in a tracepoint \"actions\" list.");

  FUNC1 ("actions", class_trace, trace_actions_command,
	   "Specify the actions to be taken at a tracepoint.\n\
Tracepoint actions may include collecting of specified data, \n\
single-stepping, or enabling/disabling other tracepoints, \n\
depending on target's capabilities.");

  FUNC0 ("tracepoints", class_trace, delete_trace_command,
	   "Delete specified tracepoints.\n\
Arguments are tracepoint numbers, separated by spaces.\n\
No argument means delete all tracepoints.",
	   &deletelist);

  FUNC0 ("tracepoints", class_trace, disable_trace_command,
	   "Disable specified tracepoints.\n\
Arguments are tracepoint numbers, separated by spaces.\n\
No argument means disable all tracepoints.",
	   &disablelist);

  FUNC0 ("tracepoints", class_trace, enable_trace_command,
	   "Enable specified tracepoints.\n\
Arguments are tracepoint numbers, separated by spaces.\n\
No argument means enable all tracepoints.",
	   &enablelist);

  c = FUNC1 ("trace", class_trace, trace_command,
	       "Set a tracepoint at a specified line or function or address.\n\
Argument may be a line number, function name, or '*' plus an address.\n\
For a line number or function, trace at the start of its code.\n\
If an address is specified, trace at that exact address.\n\n\
Do \"help tracepoints\" for info on other tracepoint commands.");
  FUNC7 (c, location_completer);

  FUNC2 ("tp", "trace", class_alias, 0);
  FUNC2 ("tr", "trace", class_alias, 1);
  FUNC2 ("tra", "trace", class_alias, 1);
  FUNC2 ("trac", "trace", class_alias, 1);
}