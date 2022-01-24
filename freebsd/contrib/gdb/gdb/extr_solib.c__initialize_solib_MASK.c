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
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 struct cmd_list_element* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cmd_list_element*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  auto_solib_add ; 
 int /*<<< orphan*/  class_files ; 
 int /*<<< orphan*/  class_support ; 
 int /*<<< orphan*/  filename_completer ; 
 int /*<<< orphan*/  gdb_sysroot ; 
 int /*<<< orphan*/  info_sharedlibrary_command ; 
 int /*<<< orphan*/  no_shared_libraries ; 
 int /*<<< orphan*/  reload_shared_libraries ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  sharedlibrary_command ; 
 int /*<<< orphan*/  showlist ; 
 scalar_t__ solib_absolute_prefix ; 
 int /*<<< orphan*/  solib_search_path ; 
 int /*<<< orphan*/  var_boolean ; 
 int /*<<< orphan*/  var_filename ; 
 int /*<<< orphan*/  var_string ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7 (void)
{
  struct cmd_list_element *c;

  FUNC0 ("sharedlibrary", class_files, sharedlibrary_command,
	   "Load shared object library symbols for files matching REGEXP.");
  FUNC1 ("sharedlibrary", info_sharedlibrary_command,
	    "Status of loaded shared object libraries.");
  FUNC0 ("nosharedlibrary", class_files, no_shared_libraries,
	   "Unload all shared object library symbols.");

  FUNC3
    (FUNC2 ("auto-solib-add", class_support, var_boolean,
		  (char *) &auto_solib_add,
		  "Set autoloading of shared library symbols.\n\
If \"on\", symbols from all shared object libraries will be loaded\n\
automatically when the inferior begins execution, when the dynamic linker\n\
informs gdb that a new library has been loaded, or when attaching to the\n\
inferior.  Otherwise, symbols must be loaded manually, using `sharedlibrary'.",
		  &setlist),
     &showlist);

  c = FUNC2 ("solib-absolute-prefix", class_support, var_filename,
		   (char *) &solib_absolute_prefix,
		   "Set prefix for loading absolute shared library symbol files.\n\
For other (relative) files, you can add values using `set solib-search-path'.",
		   &setlist);
  FUNC3 (c, &showlist);
  FUNC4 (c, reload_shared_libraries);
  FUNC5 (c, filename_completer);

  /* Set the default value of "solib-absolute-prefix" from the sysroot, if
     one is set.  */
  solib_absolute_prefix = FUNC6 (gdb_sysroot);

  c = FUNC2 ("solib-search-path", class_support, var_string,
		   (char *) &solib_search_path,
		   "Set the search path for loading non-absolute shared library symbol files.\n\
This takes precedence over the environment variables PATH and LD_LIBRARY_PATH.",
		   &setlist);
  FUNC3 (c, &showlist);
  FUNC4 (c, reload_shared_libraries);
  FUNC5 (c, filename_completer);
}