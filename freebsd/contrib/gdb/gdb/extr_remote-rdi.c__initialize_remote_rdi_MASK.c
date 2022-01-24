#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cmd_list_element {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cmd_list_element* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  arm_rdi_ops ; 
 int /*<<< orphan*/  class_maintenance ; 
 int /*<<< orphan*/  filename_completer ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  log_enable ; 
 int /*<<< orphan*/  log_filename ; 
 int /*<<< orphan*/  maintenancelist ; 
 int /*<<< orphan*/  no_class ; 
 int /*<<< orphan*/  rdi_heartbeat ; 
 int /*<<< orphan*/  rdilogenable_command ; 
 int /*<<< orphan*/  rdilogfile_command ; 
 int /*<<< orphan*/  rom_at_zero ; 
 int /*<<< orphan*/  FUNC6 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void
FUNC8 (void)
{
  struct cmd_list_element *c;

  FUNC5 ();
  FUNC4 (&arm_rdi_ops);

  log_filename = FUNC7 ("rdi.log");
  FUNC1 (log_filename);
  FUNC0 (log_enable);

  c = FUNC2 ("rdilogfile", class_maintenance,
	       rdilogfile_command,
	       "Set filename for ADP packet log.\n"
	       "This file is used to log Angel Debugger Protocol packets.\n"
	       "With a single argument, sets the logfile name to that value.\n"
	       "Without an argument, shows the current logfile name.\n"
	       "See also: rdilogenable\n",
	       &maintenancelist);
  FUNC6 (c, filename_completer);

  FUNC2 ("rdilogenable", class_maintenance,
	   rdilogenable_command,
	   "Set enable logging of ADP packets.\n"
	   "This will log ADP packets exchanged between gdb and the\n"
	   "rdi target device.\n"
	   "An argument of 1, t, true, y or yes will enable.\n"
	   "An argument of 0, f, false, n or no will disabled.\n"
	   "Withough an argument, it will display current state.\n",
	   &maintenancelist);

  FUNC3
    ("rdiromatzero", no_class, &rom_at_zero,
     "Set target has ROM at addr 0.\n"
     "A true value disables vector catching, false enables vector catching.\n"
     "This is evaluated at the time the 'target rdi' command is executed\n",
     "Show if target has ROM at addr 0.\n",
     NULL, NULL,
     &setlist, &showlist);

  FUNC3
    ("rdiheartbeat", no_class, &rdi_heartbeat,
     "Set enable for ADP heartbeat packets.\n"
     "I don't know why you would want this. If you enable them,\n"
     "it will confuse ARM and EPI JTAG interface boxes as well\n"
     "as the Angel Monitor.\n",
     "Show enable for ADP heartbeat packets.\n",
     NULL, NULL,
     &setlist, &showlist);
}