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
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_maintenance ; 
 int /*<<< orphan*/  class_obscure ; 
 int /*<<< orphan*/  class_support ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  do_monitor_command ; 
 int /*<<< orphan*/  dummy_target ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  setdebuglist ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showdebuglist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  targ_desc ; 
 int /*<<< orphan*/  target_dcache ; 
 int /*<<< orphan*/  target_info ; 
 int /*<<< orphan*/  targetdebug ; 
 int /*<<< orphan*/  trust_readonly ; 
 int /*<<< orphan*/  var_zinteger ; 

void
FUNC8 (void)
{
  FUNC6 ();
  FUNC7 (&dummy_target);

  FUNC1 ("target", target_info, targ_desc);
  FUNC1 ("files", target_info, targ_desc);

  FUNC4 
    (FUNC2 ("target", class_maintenance, var_zinteger,
		  (char *) &targetdebug,
		  "Set target debugging.\n\
When non-zero, target debugging is enabled.", &setdebuglist),
     &showdebuglist);

  FUNC3 ("trust-readonly-sections", class_support, 
			   &trust_readonly, "\
Set mode for reading from readonly sections.\n\
When this mode is on, memory reads from readonly sections (such as .text)\n\
will be read from the object file instead of from the target.  This will\n\
result in significant performance improvement for remote targets.", "\
Show mode for reading from readonly sections.\n",
			   NULL, NULL,
			   &setlist, &showlist);

  FUNC0 ("monitor", class_obscure, do_monitor_command,
	   "Send a command to the remote monitor (remote targets only).");

  target_dcache = FUNC5 ();
}