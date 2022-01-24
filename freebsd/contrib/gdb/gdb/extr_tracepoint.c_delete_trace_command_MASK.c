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
 int /*<<< orphan*/  delete_op ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ tracepoint_chain ; 

__attribute__((used)) static void
FUNC3 (char *args, int from_tty)
{
  FUNC0 ();
  if (!args || !*args)		/* No args implies all tracepoints; */
    if (from_tty)		/* confirm only if from_tty... */
      if (tracepoint_chain)	/* and if there are tracepoints to delete! */
	if (!FUNC2 ("Delete all tracepoints? "))
	  return;

  FUNC1 (args, from_tty, delete_op);
}