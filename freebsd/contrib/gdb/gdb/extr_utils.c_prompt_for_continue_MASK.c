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
 int /*<<< orphan*/  SIGINT ; 
 int annotation_level ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  event_loop_p ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  immediate_quit ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9 (void)
{
  char *ignore;
  char cont_prompt[120];

  if (annotation_level > 1)
    FUNC3 ("\n\032\032pre-prompt-for-continue\n");

  FUNC7 (cont_prompt,
	  "---Type <return> to continue, or q <return> to quit---");
  if (annotation_level > 1)
    FUNC6 (cont_prompt, "\n\032\032prompt-for-continue\n");

  /* We must do this *before* we call gdb_readline, else it will eventually
     call us -- thinking that we're trying to print beyond the end of the 
     screen.  */
  FUNC4 ();

  immediate_quit++;
  /* On a real operating system, the user can quit with SIGINT.
     But not on GO32.

     'q' is provided on all systems so users don't have to change habits
     from system to system, and because telling them what to do in
     the prompt is more user-friendly than expecting them to think of
     SIGINT.  */
  /* Call readline, not gdb_readline, because GO32 readline handles control-C
     whereas control-C to gdb_readline will cause the user to get dumped
     out to DOS.  */
  ignore = FUNC2 (cont_prompt);

  if (annotation_level > 1)
    FUNC3 ("\n\032\032post-prompt-for-continue\n");

  if (ignore)
    {
      char *p = ignore;
      while (*p == ' ' || *p == '\t')
	++p;
      if (p[0] == 'q')
	{
	  if (!event_loop_p)
	    FUNC5 (SIGINT);
	  else
	    FUNC0 (0);
	}
      FUNC8 (ignore);
    }
  immediate_quit--;

  /* Now we have to do this again, so that GDB will know that it doesn't
     need to save the ---Type <return>--- line at the top of the screen.  */
  FUNC4 ();

  FUNC1 ();		/* Forget prev cmd -- CR won't repeat it. */
}