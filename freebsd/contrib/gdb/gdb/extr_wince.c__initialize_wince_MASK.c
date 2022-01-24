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
 struct cmd_list_element* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_list_element*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  child_ops ; 
 int /*<<< orphan*/  class_support ; 
 int /*<<< orphan*/  debug_events ; 
 int /*<<< orphan*/  debug_exceptions ; 
 int /*<<< orphan*/  debug_exec ; 
 int /*<<< orphan*/  debug_memory ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  no_class ; 
 int /*<<< orphan*/  remote_add_host ; 
 scalar_t__ remote_directory ; 
 int /*<<< orphan*/  remote_upload ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_list_element*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  var_boolean ; 
 int /*<<< orphan*/  var_string_noescape ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

void
FUNC7 (void)
{
  struct cmd_list_element *set;
  FUNC3 ();

  FUNC1
    (FUNC0 ((char *) "remotedirectory", no_class,
		  var_string_noescape, (char *) &remote_directory,
		  (char *) "Set directory for remote upload.\n",
		  &setlist),
     &showlist);
  remote_directory = FUNC6 (remote_directory);

  set = FUNC0 ((char *) "remoteupload", no_class,
		     var_string_noescape, (char *) &remote_upload,
	       (char *) "Set how to upload executables to remote device.\n",
		     &setlist);
  FUNC1 (set, &showlist);
  FUNC4 (set, set_upload_type);
  FUNC5 (NULL, 0);

  FUNC1
    (FUNC0 ((char *) "debugexec", class_support, var_boolean,
		  (char *) &debug_exec,
	      (char *) "Set whether to display execution in child process.",
		  &setlist),
     &showlist);

  FUNC1
    (FUNC0 ((char *) "remoteaddhost", class_support, var_boolean,
		  (char *) &remote_add_host,
		  (char *) "\
Set whether to add this host to remote stub arguments for\n\
debugging over a network.", &setlist),
     &showlist);

  FUNC1
    (FUNC0 ((char *) "debugevents", class_support, var_boolean,
		  (char *) &debug_events,
	  (char *) "Set whether to display kernel events in child process.",
		  &setlist),
     &showlist);

  FUNC1
    (FUNC0 ((char *) "debugmemory", class_support, var_boolean,
		  (char *) &debug_memory,
	(char *) "Set whether to display memory accesses in child process.",
		  &setlist),
     &showlist);

  FUNC1
    (FUNC0 ((char *) "debugexceptions", class_support, var_boolean,
		  (char *) &debug_exceptions,
      (char *) "Set whether to display kernel exceptions in child process.",
		  &setlist),
     &showlist);

  FUNC2 (&child_ops);
}