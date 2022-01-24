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
struct objfile {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TYPE_CODE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  builtin_type_error ; 
 int /*<<< orphan*/  class_breakpoint ; 
 int /*<<< orphan*/  class_info ; 
 scalar_t__ dbx_commands ; 
 int /*<<< orphan*/  functions_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct objfile*) ; 
 int /*<<< orphan*/  rbreak_command ; 
 int /*<<< orphan*/  sources_info ; 
 int /*<<< orphan*/  types_info ; 
 int /*<<< orphan*/  variables_info ; 
 scalar_t__ xdb_commands ; 

void
FUNC3 (void)
{
  FUNC1 ("variables", variables_info,
	 "All global and static variable names, or those matching REGEXP.");
  if (dbx_commands)
    FUNC0 ("whereis", class_info, variables_info,
	 "All global and static variable names, or those matching REGEXP.");

  FUNC1 ("functions", functions_info,
	    "All function names, or those matching REGEXP.");

  
  /* FIXME:  This command has at least the following problems:
     1.  It prints builtin types (in a very strange and confusing fashion).
     2.  It doesn't print right, e.g. with
     typedef struct foo *FOO
     type_print prints "FOO" when we want to make it (in this situation)
     print "struct foo *".
     I also think "ptype" or "whatis" is more likely to be useful (but if
     there is much disagreement "info types" can be fixed).  */
  FUNC1 ("types", types_info,
	    "All type names, or those matching REGEXP.");

  FUNC1 ("sources", sources_info,
	    "Source files in the program.");

  FUNC0 ("rbreak", class_breakpoint, rbreak_command,
	   "Set a breakpoint for all functions matching REGEXP.");

  if (xdb_commands)
    {
      FUNC0 ("lf", class_info, sources_info, "Source files in the program");
      FUNC0 ("lg", class_info, variables_info,
	 "All global and static variable names, or those matching REGEXP.");
    }

  /* Initialize the one built-in type that isn't language dependent... */
  builtin_type_error = FUNC2 (TYPE_CODE_ERROR, 0, 0,
				  "<unknown type>", (struct objfile *) NULL);
}