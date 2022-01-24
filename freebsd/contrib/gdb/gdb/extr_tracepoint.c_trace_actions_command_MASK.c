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
struct tracepoint {int number; scalar_t__ step_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tracepoint*) ; 
 struct tracepoint* FUNC1 (char**,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct tracepoint*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void
FUNC10 (char *args, int from_tty)
{
  struct tracepoint *t;
  char tmpbuf[128];
  char *end_msg = "End with a line saying just \"end\".";

  t = FUNC1 (&args, 0, 1);
  if (t)
    {
      FUNC7 (tmpbuf, "Enter actions for tracepoint %d, one per line.",
	       t->number);

      if (from_tty)
	{
	  if (&readline_begin_hook)
	    FUNC5) ("%s  %s\n", tmpbuf, end_msg);
	  else if (FUNC2 ())
	    FUNC3 ("%s\n%s\n", tmpbuf, end_msg);
	}

      FUNC0 (t);
      t->step_count = 0;	/* read_actions may set this */
      FUNC4 (t);

      if (&readline_end_hook)
	FUNC6) ();
      /* tracepoints_changed () */
    }
  /* else just return */
}