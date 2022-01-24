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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct cmd_list_element* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_list_element*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  asm_demangle ; 
 char chars_per_line ; 
 int /*<<< orphan*/  class_support ; 
 int /*<<< orphan*/  demangle ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char lines_per_page ; 
 int /*<<< orphan*/  pagination_enabled ; 
 int /*<<< orphan*/  pagination_off_command ; 
 int /*<<< orphan*/  pagination_on_command ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_height_command ; 
 int /*<<< orphan*/  set_width_command ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  setprintlist ; 
 int /*<<< orphan*/  sevenbit_strings ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  showprintlist ; 
 int /*<<< orphan*/  var_boolean ; 
 int /*<<< orphan*/  var_uinteger ; 
 scalar_t__ xdb_commands ; 

void
FUNC5 (void)
{
  struct cmd_list_element *c;

  c = FUNC1 ("width", class_support, var_uinteger, &chars_per_line,
		   "Set number of characters gdb thinks are in a line.",
		   &setlist);
  FUNC2 (c, &showlist);
  FUNC4 (c, set_width_command);

  c = FUNC1 ("height", class_support, var_uinteger, &lines_per_page,
		   "Set number of lines gdb thinks are in a page.", &setlist);
  FUNC2 (c, &showlist);
  FUNC4 (c, set_height_command);

  FUNC3 ();

  FUNC2
    (FUNC1 ("demangle", class_support, var_boolean,
		  (char *) &demangle,
		  "Set demangling of encoded C++/ObjC names when displaying symbols.",
		  &setprintlist), &showprintlist);

  FUNC2
    (FUNC1 ("pagination", class_support,
		  var_boolean, (char *) &pagination_enabled,
		  "Set state of pagination.", &setlist), &showlist);

  if (xdb_commands)
    {
      FUNC0 ("am", class_support, pagination_on_command,
	       "Enable pagination");
      FUNC0 ("sm", class_support, pagination_off_command,
	       "Disable pagination");
    }

  FUNC2
    (FUNC1 ("sevenbit-strings", class_support, var_boolean,
		  (char *) &sevenbit_strings,
		  "Set printing of 8-bit characters in strings as \\nnn.",
		  &setprintlist), &showprintlist);

  FUNC2
    (FUNC1 ("asm-demangle", class_support, var_boolean,
		  (char *) &asm_demangle,
		  "Set demangling of C++/ObjC names in disassembly listings.",
		  &setprintlist), &showprintlist);
}