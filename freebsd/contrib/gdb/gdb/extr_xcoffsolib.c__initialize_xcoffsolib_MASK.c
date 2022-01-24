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
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  auto_solib_add ; 
 int /*<<< orphan*/  class_files ; 
 int /*<<< orphan*/  class_support ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  sharedlibrary_command ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  solib_info ; 
 int /*<<< orphan*/  var_boolean ; 

void
FUNC4 (void)
{
  FUNC0 ("sharedlibrary", class_files, sharedlibrary_command,
	   "Load shared object library symbols for files matching REGEXP.");
  FUNC1 ("sharedlibrary", solib_info,
	    "Status of loaded shared object libraries");

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
}