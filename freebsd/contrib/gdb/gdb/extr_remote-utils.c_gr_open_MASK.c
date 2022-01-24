#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gr_settings {TYPE_1__* ops; int /*<<< orphan*/ * clear_all_breakpoints; } ;
struct TYPE_3__ {int /*<<< orphan*/  to_shortname; } ;

/* Variables and functions */
 int baud_rate ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct gr_settings* gr_settings ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * remove_breakpoints ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 char* FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC20 (char *args, int from_tty, struct gr_settings *gr)
{
  FUNC17 (from_tty);
  FUNC14 (gr->ops->to_shortname, args);
  FUNC18 (gr->ops);

  gr_settings = gr;

  if (FUNC11 () != NULL)
    FUNC2 (0);

  /* If no args are specified, then we use the device specified by a
     previous command or "set remotedevice".  But if there is no
     device, better stop now, not dump core.  */

  if (FUNC12 () == NULL)
    FUNC19 (gr->ops->to_shortname, NULL);

  FUNC15 (FUNC8 (FUNC12 ()));
  if (!FUNC11 ())
    FUNC3 ((char *) FUNC12 ());

  if (baud_rate != -1)
    {
      if (FUNC10 (FUNC11 (), baud_rate) != 0)
	{
	  FUNC6 (FUNC11 ());
	  FUNC3 (FUNC12 ());
	}
    }

  FUNC9 (FUNC11 ());

  /* If there is something sitting in the buffer we might take it as a
     response to a command, which would be bad.  */
  FUNC7 (FUNC11 ());

  /* default retries */
  if (FUNC13 () == 0)
    FUNC16 (1);

  /* default clear breakpoint function */
  if (gr_settings->clear_all_breakpoints == NULL)
    gr_settings->clear_all_breakpoints = remove_breakpoints;

  if (from_tty)
    {
      FUNC4 ("Remote debugging using `%s'", FUNC12 ());
      if (baud_rate != -1)
	FUNC4 (" at baud rate of %d",
			 baud_rate);
      FUNC4 ("\n");
    }

  FUNC5 (gr->ops);
  FUNC0 ();
  FUNC1 ();
  return;
}