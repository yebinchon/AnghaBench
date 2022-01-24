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
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  no_class ; 
 int /*<<< orphan*/  sds_command ; 
 int /*<<< orphan*/  sds_ops ; 
 int /*<<< orphan*/  sds_timeout ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  var_integer ; 

void
FUNC5 (void)
{
  FUNC4 ();
  FUNC3 (&sds_ops);

  FUNC2 (FUNC1 ("sdstimeout", no_class,
				  var_integer, (char *) &sds_timeout,
			     "Set timeout value for sds read.\n", &setlist),
		     &showlist);

  FUNC0 ("sds", class_obscure, sds_command,
	   "Send a command to the SDS monitor.");
}