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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct cmd_list_element* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  child_ops ; 
 int /*<<< orphan*/  class_alias ; 
 int /*<<< orphan*/  class_files ; 
 int /*<<< orphan*/  class_info ; 
 int /*<<< orphan*/  class_support ; 
 int /*<<< orphan*/  debug_events ; 
 int /*<<< orphan*/  debug_exceptions ; 
 int /*<<< orphan*/  debug_exec ; 
 int /*<<< orphan*/  debug_memory ; 
 int /*<<< orphan*/  display_selectors ; 
 int /*<<< orphan*/  dll_symbol_command ; 
 int /*<<< orphan*/  filename_completer ; 
 int /*<<< orphan*/  info_dll_command ; 
 int /*<<< orphan*/  info_w32_cmdlist ; 
 int /*<<< orphan*/  info_w32_command ; 
 int /*<<< orphan*/  infolist ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  new_console ; 
 int /*<<< orphan*/  new_group ; 
 int /*<<< orphan*/  FUNC10 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  useshell ; 
 int /*<<< orphan*/  var_boolean ; 

void
FUNC11 (void)
{
  struct cmd_list_element *c;

  FUNC9 ();

  c = FUNC1 ("dll-symbols", class_files, dll_symbol_command,
	       "Load dll library symbols from FILE.");
  FUNC10 (c, filename_completer);

  FUNC2 ("sharedlibrary", "dll-symbols", class_alias, 1);

  FUNC7 (FUNC6 ("shell", class_support, var_boolean,
				  (char *) &useshell,
		 "Set use of shell to start subprocess.",
				  &setlist),
		     &showlist);

  FUNC7 (FUNC6 ("new-console", class_support, var_boolean,
				  (char *) &new_console,
		 "Set creation of new console when creating child process.",
				  &setlist),
		     &showlist);

  FUNC7 (FUNC6 ("new-group", class_support, var_boolean,
				  (char *) &new_group,
		   "Set creation of new group when creating child process.",
				  &setlist),
		     &showlist);

  FUNC7 (FUNC6 ("debugexec", class_support, var_boolean,
				  (char *) &debug_exec,
		       "Set whether to display execution in child process.",
				  &setlist),
		     &showlist);

  FUNC7 (FUNC6 ("debugevents", class_support, var_boolean,
				  (char *) &debug_events,
		   "Set whether to display kernel events in child process.",
				  &setlist),
		     &showlist);

  FUNC7 (FUNC6 ("debugmemory", class_support, var_boolean,
				  (char *) &debug_memory,
		 "Set whether to display memory accesses in child process.",
				  &setlist),
		     &showlist);

  FUNC7 (FUNC6 ("debugexceptions", class_support, var_boolean,
				  (char *) &debug_exceptions,
	       "Set whether to display kernel exceptions in child process.",
				  &setlist),
		     &showlist);

  FUNC3 ("dll", info_dll_command, "Status of loaded DLLs.");
  FUNC4 ("sharedlibrary", "dll", 1);

  FUNC5 ("w32", class_info, info_w32_command,
		  "Print information specific to Win32 debugging.",
		  &info_w32_cmdlist, "info w32 ", 0, &infolist);

  FUNC0 ("selector", class_info, display_selectors,
	   "Display selectors infos.",
	   &info_w32_cmdlist);

  FUNC8 (&child_ops);
}