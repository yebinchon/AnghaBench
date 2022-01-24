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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_maintenance ; 
 int /*<<< orphan*/  class_obscure ; 
 int /*<<< orphan*/  connect_command ; 
 int /*<<< orphan*/  global_serial_debug_p ; 
 int /*<<< orphan*/  logbase_enums ; 
 int /*<<< orphan*/  no_class ; 
 int /*<<< orphan*/  serial_logbase ; 
 int /*<<< orphan*/  serial_logfile ; 
 int /*<<< orphan*/  serial_set_cmd ; 
 int /*<<< orphan*/  serial_set_cmdlist ; 
 int /*<<< orphan*/  serial_show_cmd ; 
 int /*<<< orphan*/  serial_show_cmdlist ; 
 int /*<<< orphan*/  setdebuglist ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showdebuglist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  var_filename ; 
 int /*<<< orphan*/  var_zinteger ; 

void
FUNC5 (void)
{
#if 0
  add_com ("connect", class_obscure, connect_command,
	   "Connect the terminal directly up to the command monitor.\n\
Use <CR>~. or <CR>~^D to break out.");
#endif /* 0 */

  FUNC1 ("serial", class_maintenance, serial_set_cmd, "\
Set default serial/parallel port configuration.",
		  &serial_set_cmdlist, "set serial ",
		  0/*allow-unknown*/,
		  &setlist);

  FUNC1 ("serial", class_maintenance, serial_show_cmd, "\
Show default serial/parallel port configuration.",
		  &serial_show_cmdlist, "show serial ",
		  0/*allow-unknown*/,
		  &showlist);

  FUNC4
    (FUNC2 ("remotelogfile", no_class,
		  var_filename, (char *) &serial_logfile,
		  "Set filename for remote session recording.\n\
This file is used to record the remote session for future playback\n\
by gdbserver.",
		  &setlist),
     &showlist);

  FUNC4
    (FUNC3 ("remotelogbase", no_class,
		       logbase_enums, &serial_logbase,
		       "Set numerical base for remote session logging",
		       &setlist),
     &showlist);

  FUNC4 (FUNC2 ("serial",
				  class_maintenance,
				  var_zinteger,
				  (char *)&global_serial_debug_p,
				  "Set serial debugging.\n\
When non-zero, serial port debugging is enabled.", &setdebuglist),
		     &showdebuglist);
}