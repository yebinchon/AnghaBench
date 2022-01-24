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
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_obscure ; 
 int /*<<< orphan*/  e7000_command ; 
 int /*<<< orphan*/  e7000_drain_command ; 
 int /*<<< orphan*/  e7000_ftp_command ; 
 int /*<<< orphan*/  e7000_login_command ; 
 int /*<<< orphan*/  e7000_ops ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  no_class ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  use_hard_breakpoints ; 
 int /*<<< orphan*/  var_integer ; 

void
FUNC5 (void)
{
  FUNC4 ();
  FUNC3 (&e7000_ops);

  FUNC0 ("e7000", class_obscure, e7000_command,
	   "Send a command to the e7000 monitor.");

  FUNC0 ("ftplogin", class_obscure, e7000_login_command,
	   "Login to machine and change to directory.");

  FUNC0 ("ftpload", class_obscure, e7000_ftp_command,
	   "Fetch and load a file from previously described place.");

  FUNC0 ("drain", class_obscure, e7000_drain_command,
	   "Drain pending e7000 text buffers.");

  FUNC2 (FUNC1 ("usehardbreakpoints", no_class,
				var_integer, (char *) &use_hard_breakpoints,
	"Set use of hardware breakpoints for all breakpoints.\n", &setlist),
		     &showlist);
}