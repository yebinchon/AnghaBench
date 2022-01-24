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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 scalar_t__ remote_break ; 
 scalar_t__ remote_debug ; 
 int /*<<< orphan*/  remote_desc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC3 (void)
{
  /* Send a break or a ^C, depending on user preference.  */
  if (remote_debug)
    FUNC0 (gdb_stdlog, "remote_stop called\n");

  if (remote_break)
    FUNC1 (remote_desc);
  else
    FUNC2 (remote_desc, "\003", 1);
}