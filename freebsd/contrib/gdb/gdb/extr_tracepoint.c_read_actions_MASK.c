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
struct tracepoint {struct action_line* actions; } ;
struct cleanup {int dummy; } ;
struct action_line {char* action; struct action_line* next; } ;
typedef  enum actionline_type { ____Placeholder_actionline_type } actionline_type ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BADLINE ; 
 int END ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int STEPPING ; 
 int /*<<< orphan*/  STOP_SIGNAL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 scalar_t__ event_loop_p ; 
 int /*<<< orphan*/  FUNC3 (struct tracepoint*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  handle_stop_sig ; 
 int /*<<< orphan*/  immediate_quit ; 
 scalar_t__ job_control ; 
 struct cleanup* FUNC7 (struct tracepoint*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  stop_sig ; 
 char* FUNC10 (char*) ; 
 int FUNC11 (char**,struct tracepoint*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 struct action_line* FUNC14 (int) ; 

__attribute__((used)) static void
FUNC15 (struct tracepoint *t)
{
  char *line;
  char *prompt1 = "> ", *prompt2 = "  > ";
  char *prompt = prompt1;
  enum actionline_type linetype;
  extern FILE *instream;
  struct action_line *next = NULL, *temp;
  struct cleanup *old_chain;

  /* Control-C quits instantly if typed while in this loop
     since it should not wait until the user types a newline.  */
  immediate_quit++;
  /* FIXME: kettenis/20010823: Something is wrong here.  In this file
     STOP_SIGNAL is never defined.  So this code has been left out, at
     least for quite a while now.  Replacing STOP_SIGNAL with SIGTSTP
     leads to compilation failures since the variable job_control
     isn't declared.  Leave this alone for now.  */
#ifdef STOP_SIGNAL
  if (job_control)
    {
      if (event_loop_p)
	signal (STOP_SIGNAL, handle_stop_sig);
      else
	signal (STOP_SIGNAL, stop_sig);
    }
#endif
  old_chain = FUNC7 (t);
  while (1)
    {
      /* Make sure that all output has been output.  Some machines may let
         you get away with leaving out some of the gdb_flush, but not all.  */
      FUNC13 ("");
      FUNC4 (gdb_stdout);
      FUNC4 (gdb_stderr);

      if (&readline_hook && instream == NULL)
	line = FUNC8) (prompt);
      else if (instream == stdin && FUNC0 (instream))
	{
	  line = FUNC6 (prompt);
	  if (line && *line)	/* add it to command history */
	    FUNC1 (line);
	}
      else
	line = FUNC5 (0);

      linetype = FUNC11 (&line, t);
      if (linetype == BADLINE)
	continue;		/* already warned -- collect another line */

      temp = FUNC14 (sizeof (struct action_line));
      temp->next = NULL;
      temp->action = line;

      if (next == NULL)		/* first action for this tracepoint? */
	t->actions = next = temp;
      else
	{
	  next->next = temp;
	  next = temp;
	}

      if (linetype == STEPPING)	/* begin "while-stepping" */
	{
	  if (prompt == prompt2)
	    {
	      FUNC12 ("Already processing 'while-stepping'");
	      continue;
	    }
	  else
	    prompt = prompt2;	/* change prompt for stepping actions */
	}
      else if (linetype == END)
	{
	  if (prompt == prompt2)
	    {
	      prompt = prompt1;	/* end of single-stepping actions */
	    }
	  else
	    {			/* end of actions */
	      if (t->actions->next == NULL)
		{
		  /* an "end" all by itself with no other actions means
		     this tracepoint has no actions.  Discard empty list. */
		  FUNC3 (t);
		}
	      break;
	    }
	}
    }
#ifdef STOP_SIGNAL
  if (job_control)
    signal (STOP_SIGNAL, SIG_DFL);
#endif
  immediate_quit--;
  FUNC2 (old_chain);
}