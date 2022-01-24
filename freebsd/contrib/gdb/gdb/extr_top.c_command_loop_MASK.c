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
struct cleanup {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 char* FUNC6 () ; 
 long FUNC7 () ; 
 scalar_t__ instream ; 
 char* lim_at_start ; 
 struct cleanup* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  null_cleanup ; 
 int /*<<< orphan*/  FUNC9 (char*,long,char,...) ; 
 scalar_t__ quit_flag ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ stdin ; 
 int /*<<< orphan*/  stop_bpstat ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,char*) ; 

void
FUNC14 (void)
{
  struct cleanup *old_chain;
  char *command;
  int stdin_is_tty = FUNC0 (stdin);
  long time_at_cmd_start;
#ifdef HAVE_SBRK
  long space_at_cmd_start = 0;
#endif
  extern int display_time;
  extern int display_space;

  while (instream && !FUNC5 (instream))
    {
      if (&window_hook && instream == stdin)
	FUNC13) (instream, FUNC6 ());

      quit_flag = 0;
      if (instream == stdin && stdin_is_tty)
	FUNC10 ();
      old_chain = FUNC8 (null_cleanup, 0);

      /* Get a command-line. This calls the readline package. */
      command = FUNC2 (instream == stdin ?
				    FUNC6 () : (char *) NULL,
				    instream == stdin, "prompt");
      if (command == 0)
	return;

      time_at_cmd_start = FUNC7 ();

      if (display_space)
	{
#ifdef HAVE_SBRK
	  char *lim = (char *) sbrk (0);
	  space_at_cmd_start = lim - lim_at_start;
#endif
	}

      FUNC4 (command, instream == stdin);
      /* Do any commands attached to breakpoint we stopped at.  */
      FUNC1 (&stop_bpstat);
      FUNC3 (old_chain);

      if (display_time)
	{
	  long cmd_time = FUNC7 () - time_at_cmd_start;

	  FUNC9 ("Command execution time: %ld.%06ld\n",
			     cmd_time / 1000000, cmd_time % 1000000);
	}

      if (display_space)
	{
#ifdef HAVE_SBRK
	  char *lim = (char *) sbrk (0);
	  long space_now = lim - lim_at_start;
	  long space_diff = space_now - space_at_cmd_start;

	  printf_unfiltered ("Space used: %ld (%c%ld for this command)\n",
			     space_now,
			     (space_diff >= 0 ? '+' : '-'),
			     space_diff);
#endif
	}
    }
}