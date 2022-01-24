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
struct target_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int child_suppress_run ; 
 int /*<<< orphan*/  class_run ; 
 int /*<<< orphan*/  core_ops ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  fbsd_core_ops ; 
 int /*<<< orphan*/  fbsd_thread_new_objfile ; 
 int /*<<< orphan*/  fbsd_thread_ops ; 
 int /*<<< orphan*/  fbsd_thread_signal_cmd ; 
 int /*<<< orphan*/  fbsd_thread_tsd_cmd ; 
 scalar_t__ fbsdcoreops_suppress_target ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  orig_core_ops ; 
 int /*<<< orphan*/  target_new_objfile_chain ; 
 int /*<<< orphan*/  target_new_objfile_hook ; 
 int /*<<< orphan*/  thread_cmd_list ; 
 scalar_t__ FUNC7 () ; 

void
FUNC8 (void)
{

  if (fbsdcoreops_suppress_target)
    return;
  FUNC5 ();
  FUNC4 ();

  if (FUNC7 ())
    {
      FUNC1 (&fbsd_thread_ops);

      /* "thread tsd" command */
      FUNC0 ("tsd", class_run, fbsd_thread_tsd_cmd,
            "Show the thread-specific data keys and destructors "
            "for the process.\n",
           &thread_cmd_list);

      FUNC0 ("signal", class_run, fbsd_thread_signal_cmd,
            "Show the thread signal info.\n",
           &thread_cmd_list);

      FUNC6 (&orig_core_ops, &core_ops, sizeof (struct target_ops));
      FUNC6 (&core_ops, &fbsd_core_ops, sizeof (struct target_ops));
      FUNC1 (&core_ops);

      /* Add ourselves to objfile event chain. */
      target_new_objfile_chain = target_new_objfile_hook;
      target_new_objfile_hook = fbsd_thread_new_objfile;

      child_suppress_run = 1;
    }
  else
    {
      FUNC3 (gdb_stderr,
        "[GDB will not be able to debug user-mode threads: %s]\n", FUNC2());
     
      /* allow the user to debug non-threaded core files */
      FUNC1 (&core_ops);
    }
}