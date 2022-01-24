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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_obscure ; 
 int /*<<< orphan*/  connect_command ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  st2000_command ; 
 int /*<<< orphan*/  st2000_ops ; 

void
FUNC3 (void)
{
  FUNC2 ();
  FUNC1 (&st2000_ops);
  FUNC0 ("st2000 <command>", class_obscure, st2000_command,
	   "Send a command to the STDBUG monitor.");
  FUNC0 ("connect", class_obscure, connect_command,
	   "Connect the terminal directly up to the STDBUG command monitor.\n\
Use <CR>~. or <CR>~^D to break out.");
}