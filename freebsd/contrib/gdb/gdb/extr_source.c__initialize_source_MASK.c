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
 int /*<<< orphan*/  RE_SYNTAX_GREP ; 
 struct cmd_list_element* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_files ; 
 int /*<<< orphan*/  class_support ; 
 int /*<<< orphan*/  cmdlist ; 
 char* FUNC6 (char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ current_source_symtab ; 
 scalar_t__ dbx_commands ; 
 int /*<<< orphan*/  directory_command ; 
 int /*<<< orphan*/  filename_completer ; 
 int /*<<< orphan*/  forward_search_command ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  line_info ; 
 int /*<<< orphan*/  lines_to_list ; 
 int /*<<< orphan*/  no_class ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reverse_search_command ; 
 int /*<<< orphan*/  FUNC9 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  show_directories ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  source_info ; 
 int /*<<< orphan*/  var_uinteger ; 
 scalar_t__ xdb_commands ; 

void
FUNC10 (void)
{
  struct cmd_list_element *c;
  current_source_symtab = 0;
  FUNC7 ();

  /* The intention is to use POSIX Basic Regular Expressions.
     Always use the GNU regex routine for consistency across all hosts.
     Our current GNU regex.c does not have all the POSIX features, so this is
     just an approximation.  */
  FUNC8 (RE_SYNTAX_GREP);

  c = FUNC0 ("directory", class_files, directory_command,
	       "Add directory DIR to beginning of search path for source files.\n\
Forget cached info on source file locations and line positions.\n\
DIR can also be $cwd for the current working directory, or $cdir for the\n\
directory in which the source file was compiled into object code.\n\
With no argument, reset the search path to $cdir:$cwd, the default.",
	       &cmdlist);

  if (dbx_commands)
    FUNC2 ("use", "directory", class_files, 0);

  FUNC9 (c, filename_completer);

  FUNC0 ("directories", no_class, show_directories,
	   "Current search path for finding source files.\n\
$cwd in the path means the current working directory.\n\
$cdir in the path means the compilation directory of the source file.",
	   &showlist);

  if (xdb_commands)
    {
      FUNC2 ("D", "directory", class_files, 0);
      FUNC0 ("ld", no_class, show_directories,
	       "Current search path for finding source files.\n\
$cwd in the path means the current working directory.\n\
$cdir in the path means the compilation directory of the source file.",
	       &cmdlist);
    }

  FUNC3 ("source", source_info,
	    "Information about the current source file.");

  FUNC3 ("line", line_info,
	    FUNC6 ("Core addresses of the code for a source line.\n\
Line can be specified as\n\
  LINENUM, to list around that line in current file,\n\
  FILE:LINENUM, to list around that line in that file,\n\
  FUNCTION, to list around beginning of that function,\n\
  FILE:FUNCTION, to distinguish among like-named static functions.\n\
", "\
Default is to describe the last source line that was listed.\n\n\
This sets the default address for \"x\" to the line's first instruction\n\
so that \"x/i\" suffices to start examining the machine code.\n\
The address is also stored as the value of \"$_\".", NULL));

  FUNC1 ("forward-search", class_files, forward_search_command,
	   "Search for regular expression (see regex(3)) from last line listed.\n\
The matching line number is also stored as the value of \"$_\".");
  FUNC2 ("search", "forward-search", class_files, 0);

  FUNC1 ("reverse-search", class_files, reverse_search_command,
	   "Search backward for regular expression (see regex(3)) from last line listed.\n\
The matching line number is also stored as the value of \"$_\".");

  if (xdb_commands)
    {
      FUNC2 ("/", "forward-search", class_files, 0);
      FUNC2 ("?", "reverse-search", class_files, 0);
    }

  FUNC5
    (FUNC4 ("listsize", class_support, var_uinteger,
		  (char *) &lines_to_list,
		  "Set number of source lines gdb will list by default.",
		  &setlist),
     &showlist);
}