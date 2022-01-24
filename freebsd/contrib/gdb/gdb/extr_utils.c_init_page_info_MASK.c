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
 int /*<<< orphan*/  SIGWINCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int UINT_MAX ; 
 int chars_per_line ; 
 int /*<<< orphan*/  gdb_stdout ; 
 scalar_t__ FUNC3 (char*) ; 
 int lines_per_page ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11 (void)
{
#if defined(TUI)
  if (!tui_get_command_dimension (&chars_per_line, &lines_per_page))
#endif
    {
      int rows, cols;

#if defined(__GO32__)
      rows = ScreenRows ();
      cols = ScreenCols ();
      lines_per_page = rows;
      chars_per_line = cols;
#else
      /* Make sure Readline has initialized its terminal settings.  */
      FUNC5 (NULL);

      /* Get the screen size from Readline.  */
      FUNC4 (&rows, &cols);
      lines_per_page = rows;
      chars_per_line = cols;

      /* Readline should have fetched the termcap entry for us.  */
      if (FUNC8 ("li") < 0 || FUNC3 ("EMACS"))
	{
	  /* The number of lines per page is not mentioned in the
	     terminal description.  This probably means that paging is
	     not useful (e.g. emacs shell window), so disable paging.  */
	  lines_per_page = UINT_MAX;
	}

      /* FIXME: Get rid of this junk.  */
#if defined(SIGWINCH) && defined(SIGWINCH_HANDLER)
      SIGWINCH_HANDLER (SIGWINCH);
#endif

      /* If the output is not a terminal, don't paginate it.  */
      if (!FUNC10 (gdb_stdout))
	lines_per_page = UINT_MAX;
#endif
    }

  FUNC6 ();
  FUNC7 ();
}